import UIKit

struct CosmosAccessibility {
    
    static func update(_ view: UIView, rating: Double, text: String?, settings: CosmosSettings) {
        view.isAccessibilityElement = true
        
        view.accessibilityTraits = settings.updateOnTouch ?
            UIAccessibilityTraitAdjustable :UIAccessibilityTraitNone
        
        var accessibilityLabel = CosmosLocalizedRating.ratingTranslation
        
        if let text = text, text != "" {
            accessibilityLabel += " \(text)"
        }
        
        view.accessibilityLabel = accessibilityLabel
        
        view.accessibilityValue = accessibilityValue(view, rating: rating, settings: settings)
    }

    static func accessibilityValue(_ view: UIView, rating: Double, settings: CosmosSettings) -> String {
        let accessibilityRating = CosmosRating.displayedRatingFromPreciseRating(rating,
                                                                                fillMode: settings.fillMode, totalStars: settings.totalStars)
        let isInteger = (accessibilityRating * 10).truncatingRemainder(dividingBy: 10) == 0
        
        if isInteger {
            return "\(Int(accessibilityRating))"
        } else {
            let roundedToFirstDecimalPlace = Double( round(10 * accessibilityRating) / 10 )
            return "\(roundedToFirstDecimalPlace)"
        }
    }
    static func accessibilityIncrement(_ rating: Double, settings: CosmosSettings) -> Double {
        var increment: Double = 0
        
        switch settings.fillMode {
        case .full:
            increment = ceil(rating) - rating
            if increment == 0 { increment = 1 }
            
        case .half, .precise:
            increment = (ceil(rating * 2) - rating * 2) / 2
            if increment == 0 { increment = 0.5 }
        }
        
        if rating >= Double(settings.totalStars) { increment = 0 }
        
        return increment
    }
    
    static func accessibilityDecrement(_ rating: Double, settings: CosmosSettings) -> Double {
        var increment: Double = 0
        
        switch settings.fillMode {
        case .full:
            increment = rating - floor(rating)
            if increment == 0 { increment = 1 }
            
        case .half, .precise:
            increment = (rating * 2 - floor(rating * 2)) / 2
            if increment == 0 { increment = 0.5 }
        }
        
        if rating <= settings.minTouchRating { increment = 0 }
        
        return increment
    }
}

import UIKit

struct CosmosDefaultSettings {
    init() {}
    
    static let defaultColor = UIColor(red: 1, green: 149/255, blue: 0, alpha: 1)

    static let emptyBorderColor = defaultColor
    
    static let emptyBorderWidth: Double = 1 / Double(UIScreen.main.scale)

    static let filledBorderColor = defaultColor

    static let filledBorderWidth: Double = 1 / Double(UIScreen.main.scale)
    
    static let emptyColor = UIColor.clear
    
    static let filledColor = defaultColor

    static let fillMode = StarFillMode.full

    static let rating: Double = 2.718281828

    static let starMargin: Double = 5

    static let starPoints: [CGPoint] = [
        CGPoint(x: 49.5,  y: 0.0),
        CGPoint(x: 60.5,  y: 35.0),
        CGPoint(x: 99.0, y: 35.0),
        CGPoint(x: 67.5,  y: 58.0),
        CGPoint(x: 78.5,  y: 92.0),
        CGPoint(x: 49.5,    y: 71.0),
        CGPoint(x: 20.5,  y: 92.0),
        CGPoint(x: 31.5,  y: 58.0),
        CGPoint(x: 0.0,   y: 35.0),
        CGPoint(x: 38.5,  y: 35.0)
    ]
    
    static var starSize: Double = 20
    
    static let totalStars = 5

    static let textColor = UIColor(red: 127/255, green: 127/255, blue: 127/255, alpha: 1)

    static let textFont = UIFont.preferredFont(forTextStyle: UIFontTextStyle.footnote)

    static let textMargin: Double = 5

    static var textSize: Double {
        get {
            return Double(textFont.pointSize)
        }
    }
    
    static let minTouchRating: Double = 1

    static let updateOnTouch = true
}

import UIKit

class CosmosLayerHelper {

    class func createTextLayer(_ text: String, font: UIFont, color: UIColor) -> CATextLayer {
        let size = NSString(string: text).size(attributes: [NSFontAttributeName: font])
        
        let layer = CATextLayer()
        layer.bounds = CGRect(origin: CGPoint(), size: size)
        layer.anchorPoint = CGPoint()
        
        layer.string = text
        layer.font = CGFont(font.fontName as CFString)
        layer.fontSize = font.pointSize
        layer.foregroundColor = color.cgColor
        layer.contentsScale = UIScreen.main.scale
        
        return layer
    }
}

import UIKit

class CosmosLayers {

    class func createStarLayers(_ rating: Double, settings: CosmosSettings) -> [CALayer] {
        
        var ratingRemander = CosmosRating.numberOfFilledStars(rating,
                                                              totalNumberOfStars: settings.totalStars)
        var starLayers = [CALayer]()
        
        for _ in (0..<settings.totalStars) {
            
            let fillLevel = CosmosRating.starFillLevel(ratingRemainder: ratingRemander,
                                                       fillMode: settings.fillMode)
            
            let starLayer = createCompositeStarLayer(fillLevel, settings: settings)
            starLayers.append(starLayer)
            ratingRemander -= 1
        }
        
        positionStarLayers(starLayers, starMargin: settings.starMargin)
        return starLayers
    }

class func createCompositeStarLayer(_ starFillLevel: Double, settings: CosmosSettings) -> CALayer {
        
        if starFillLevel >= 1 {
            return createStarLayer(true, settings: settings)
        }
        
        if starFillLevel == 0 {
            return createStarLayer(false, settings: settings)
        }
        
        return createPartialStar(starFillLevel, settings: settings)
    }

class func createPartialStar(_ starFillLevel: Double, settings: CosmosSettings) -> CALayer {
        let filledStar = createStarLayer(true, settings: settings)
        let emptyStar = createStarLayer(false, settings: settings)
        
        let parentLayer = CALayer()
        parentLayer.contentsScale = UIScreen.main.scale
        parentLayer.bounds = CGRect(origin: CGPoint(), size: filledStar.bounds.size)
        parentLayer.anchorPoint = CGPoint()
        parentLayer.addSublayer(emptyStar)
        parentLayer.addSublayer(filledStar)

        filledStar.bounds.size.width *= CGFloat(starFillLevel)
        
        return parentLayer
    }
    
    private class func createStarLayer(_ isFilled: Bool, settings: CosmosSettings) -> CALayer {
        let fillColor = isFilled ? settings.filledColor : settings.emptyColor
        let strokeColor = isFilled ? settings.filledBorderColor : settings.emptyBorderColor
        
        return StarLayer.create(settings.starPoints,
                                size: settings.starSize,
                                lineWidth: isFilled ? settings.filledBorderWidth : settings.emptyBorderWidth,
                                fillColor: fillColor,
                                strokeColor: strokeColor)
    }

    class func positionStarLayers(_ layers: [CALayer], starMargin: Double) {
        var positionX:CGFloat = 0
        
        for layer in layers {
            layer.position.x = positionX
            positionX += layer.bounds.width + CGFloat(starMargin)
        }
    }
}

import Foundation

struct CosmosLocalizedRating {
    static var defaultText = "Rating"
    
    static var localizedRatings = [
        "ar": "تصنيف",
        "bg": "Рейтинг",
        "cy": "Sgôr",
        "da": "Rating",
        "de": "Bewertung",
        "el": "Βαθμολογία",
        "en": defaultText,
        "es": "Valorar",
        "et": "Reiting",
        "fi": "Luokitus",
        "fr": "De note",
        "he": "דירוג",
        "hi": "रेटिंग",
        "hr": "Ocjena",
        "hu": "Értékelés",
        "id": "Peringkat",
        "it": "Voto",
        "ko": "등급",
        "lt": "Reitingas",
        "lv": "Vērtējums",
        "nl": "Rating",
        "no": "Vurdering",
        "pl": "Ocena",
        "pt": "Classificação",
        "ro": "Evaluare",
        "ru": "Рейтинг",
        "sk": "Hodnotenie",
        "sl": "Ocena",
        "sr": "Рејтинг",
        "sw": "Rating",
        "th": "การจัดอันดับ",
        "tr": "Oy verin",
        "cs": "Hodnocení",
        "uk": "Рейтинг",
        "vi": "Đánh giá",
        "zh": "评分"
    ]
    
    static var ratingTranslation: String {
        let languages = preferredLanguages(Locale.preferredLanguages)
        return ratingInPreferredLanguage(languages)
    }

    static func translation(_ language: String) -> String? {
        return localizedRatings[language]
    }
    
    static func translationInPreferredLanguage(_ preferredLanguages: [String],
                                               localizedText: [String: String],
                                               fallbackTranslation: String) -> String {
        
        for language in preferredLanguages {
            if let translatedText = translation(language) {
                return translatedText
            }
        }
        
        return fallbackTranslation
    }
    
    static func ratingInPreferredLanguage(_ preferredLanguages: [String]) -> String {
        return translationInPreferredLanguage(preferredLanguages,
                                              localizedText: localizedRatings,
                                              fallbackTranslation: defaultText)
    }
    
    static func preferredLanguages(_ preferredLocales: [String]) -> [String] {
        return preferredLocales.map { element in
            
            let dashSeparated = element.components(separatedBy: "-")
            if dashSeparated.count > 1 { return dashSeparated[0] }
            
            let underscoreSeparated = element.components(separatedBy: "_")
            if underscoreSeparated.count > 1 { return underscoreSeparated[0] }
            
            return element
        }
    }
}

import UIKit

struct CosmosRating {
    static func starFillLevel(ratingRemainder: Double, fillMode: StarFillMode) -> Double {
        
        var result = ratingRemainder
        
        if result > 1 { result = 1 }
        if result < 0 { result = 0 }
        
        return roundFillLevel(result, fillMode: fillMode)
    }

    static func roundFillLevel(_ starFillLevel: Double, fillMode: StarFillMode) -> Double {
        switch fillMode {
        case .full:
            return Double(round(starFillLevel))
        case .half:
            return Double(round(starFillLevel * 2) / 2)
        case .precise :
            return starFillLevel
        }
    }

    static func displayedRatingFromPreciseRating(_ preciseRating: Double,
                                                 fillMode: StarFillMode, totalStars: Int) -> Double {
        
        let starFloorNumber = floor(preciseRating)
        let singleStarRemainder = preciseRating - starFloorNumber
        
        var displayedRating = starFloorNumber + starFillLevel(
            ratingRemainder: singleStarRemainder, fillMode: fillMode)
        
        displayedRating = min(Double(totalStars), displayedRating)
        displayedRating = max(0, displayedRating)
        
        return displayedRating
    }
    
    static func numberOfFilledStars(_ rating: Double, totalNumberOfStars: Int) -> Double {
        if rating > Double(totalNumberOfStars) { return Double(totalNumberOfStars) }
        if rating < 0 { return 0 }
        
        return rating
    }
}

import UIKit

public struct CosmosSettings {
    init() {}
    
    public var emptyBorderColor = CosmosDefaultSettings.emptyBorderColor

    public var emptyBorderWidth: Double = CosmosDefaultSettings.emptyBorderWidth

    public var filledBorderColor = CosmosDefaultSettings.filledBorderColor

    public var filledBorderWidth: Double = CosmosDefaultSettings.filledBorderWidth

    public var emptyColor = CosmosDefaultSettings.emptyColor

    public var filledColor = CosmosDefaultSettings.filledColor

    public var fillMode = CosmosDefaultSettings.fillMode
    
    public var starMargin: Double = CosmosDefaultSettings.starMargin

    public var starPoints: [CGPoint] = CosmosDefaultSettings.starPoints

    public var starSize: Double = CosmosDefaultSettings.starSize

    public var totalStars = CosmosDefaultSettings.totalStars

    public var textColor = CosmosDefaultSettings.textColor

    public var textFont = CosmosDefaultSettings.textFont

    public var textMargin: Double = CosmosDefaultSettings.textMargin

    public var minTouchRating: Double = CosmosDefaultSettings.minTouchRating
    
    public var updateOnTouch = CosmosDefaultSettings.updateOnTouch
}

import UIKit

class CosmosSize {

    class func calculateSizeToFitLayers(_ layers: [CALayer]) -> CGSize {
        var size = CGSize()
        
        for layer in layers {
            if layer.frame.maxX > size.width {
                size.width = layer.frame.maxX
            }
            
            if layer.frame.maxY > size.height {
                size.height = layer.frame.maxY
            }
        }
        return size
    }
}

import UIKit

class CosmosText {

    class func position(_ layer: CALayer, starsSize: CGSize, textMargin: Double) {
        layer.position.x = starsSize.width + CGFloat(textMargin)
        let yOffset = (starsSize.height - layer.bounds.height) / 2
        layer.position.y = yOffset
    }
}

import UIKit

struct CosmosTouch {

    static func touchRating(_ locationX: CGFloat, starsWidth: CGFloat, settings: CosmosSettings) -> Double {
        
        let position = locationX / starsWidth
        let totalStars = Double(settings.totalStars)
        let actualRating = totalStars * Double(position)
        var correctedRating = actualRating
        
        if settings.fillMode != .precise {
            correctedRating += 0.25
        }
        
        correctedRating = CosmosRating.displayedRatingFromPreciseRating(correctedRating,
                                                                        fillMode: settings.fillMode, totalStars: settings.totalStars)
        
        correctedRating = max(settings.minTouchRating, correctedRating)
        
        return correctedRating
    }
}

import UIKit

@IBDesignable open class CosmosView: UIView {
    
    @IBInspectable open var rating: Double = CosmosDefaultSettings.rating {
        didSet {
            if oldValue != rating {
                update()
            }
        }
    }

    @IBInspectable open var text: String? {
        didSet {
            if oldValue != text {
                update()
            }
        }
    }

    open var settings = CosmosSettings() {
        didSet {
            update()
        }
    }
    
    private var viewSize = CGSize()

    open override func awakeFromNib() {
        super.awakeFromNib()
        
        update()
    }

    convenience public init() {
        self.init(frame: CGRect())
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        update()
        self.frame.size = intrinsicContentSize
        
        improvePerformance()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        improvePerformance()
    }

    private func improvePerformance() {
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        
        isOpaque = true
    }

    open func update() {
        
        var layers = CosmosLayers.createStarLayers(rating, settings: settings)
        layer.sublayers = layers

        if let text = text {
            let textLayer = createTextLayer(text, layers: layers)
            layers.append(textLayer)
        }

        updateSize(layers)

        updateAccessibility()
    }
    private func createTextLayer(_ text: String, layers: [CALayer]) -> CALayer {
        let textLayer = CosmosLayerHelper.createTextLayer(text,
                                                          font: settings.textFont, color: settings.textColor)
        
        let starsSize = CosmosSize.calculateSizeToFitLayers(layers)
        
        CosmosText.position(textLayer, starsSize: starsSize, textMargin: settings.textMargin)
        
        layer.addSublayer(textLayer)
        
        return textLayer
    }

    private func updateSize(_ layers: [CALayer]) {
        viewSize = CosmosSize.calculateSizeToFitLayers(layers)
        invalidateIntrinsicContentSize()
    }
    
    override open var intrinsicContentSize:CGSize {
        return viewSize
    }
    
    private func updateAccessibility() {
        CosmosAccessibility.update(self, rating: rating, text: text, settings: settings)
    }

    open override func accessibilityIncrement() {
        super.accessibilityIncrement()
        
        rating += CosmosAccessibility.accessibilityIncrement(rating, settings: settings)
        didTouchCosmos?(rating)
        didFinishTouchingCosmos?(rating)
    }

    open override func accessibilityDecrement() {
        super.accessibilityDecrement()
        
        rating -= CosmosAccessibility.accessibilityDecrement(rating, settings: settings)
        didTouchCosmos?(rating)
        didFinishTouchingCosmos?(rating)
    }

    open var didTouchCosmos: ((Double)->())?

    open var didFinishTouchingCosmos: ((Double)->())?

    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        if let touch = touches.first {
            let location = touch.location(in: self).x
            onDidTouch(location, starsWidth: widthOfStars)
        }
    }

    open override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        if let touch = touches.first {
            let location = touch.location(in: self).x
            onDidTouch(location, starsWidth: widthOfStars)
        }
    }

    open override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        didFinishTouchingCosmos?(rating)
    }
    
    func onDidTouch(_ locationX: CGFloat, starsWidth: CGFloat) {
        let calculatedTouchRating = CosmosTouch.touchRating(locationX, starsWidth: starsWidth,
                                                            settings: settings)
        
        if settings.updateOnTouch {
            rating = calculatedTouchRating
        }
        
        if calculatedTouchRating == previousRatingForDidTouchCallback {
            return
        }
        
        didTouchCosmos?(calculatedTouchRating)
        previousRatingForDidTouchCallback = calculatedTouchRating
    }
    
    private var previousRatingForDidTouchCallback: Double = -123.192

    var widthOfStars: CGFloat {
        if let sublayers = self.layer.sublayers, settings.totalStars <= sublayers.count {
            let starLayers = Array(sublayers[0..<settings.totalStars])
            return CosmosSize.calculateSizeToFitLayers(starLayers).width
        }
        return 0
    }
    
    override open func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let oprimizedBounds = CosmosTouchTarget.optimize(bounds)
        return oprimizedBounds.contains(point)
    }
    
    @IBInspectable var totalStars: Int = CosmosDefaultSettings.totalStars {
        didSet {
            settings.totalStars = totalStars
        }
    }
    
    @IBInspectable var starSize: Double = CosmosDefaultSettings.starSize {
        didSet {
            settings.starSize = starSize
        }
    }
    
    @IBInspectable var filledColor: UIColor = CosmosDefaultSettings.filledColor {
        didSet {
            settings.filledColor = filledColor
        }
    }
    
    @IBInspectable var emptyColor: UIColor = CosmosDefaultSettings.emptyColor {
        didSet {
            settings.emptyColor = emptyColor
        }
    }
    
    @IBInspectable var emptyBorderColor: UIColor = CosmosDefaultSettings.emptyBorderColor {
        didSet {
            settings.emptyBorderColor = emptyBorderColor
        }
    }
    
    @IBInspectable var emptyBorderWidth: Double = CosmosDefaultSettings.emptyBorderWidth {
        didSet {
            settings.emptyBorderWidth = emptyBorderWidth
        }
    }
    
    @IBInspectable var filledBorderColor: UIColor = CosmosDefaultSettings.filledBorderColor {
        didSet {
            settings.filledBorderColor = filledBorderColor
        }
    }
    
    @IBInspectable var filledBorderWidth: Double = CosmosDefaultSettings.filledBorderWidth {
        didSet {
            settings.filledBorderWidth = filledBorderWidth
        }
    }
    
    @IBInspectable var starMargin: Double = CosmosDefaultSettings.starMargin {
        didSet {
            settings.starMargin = starMargin
        }
    }
    
    @IBInspectable var fillMode: Int = CosmosDefaultSettings.fillMode.rawValue {
        didSet {
            settings.fillMode = StarFillMode(rawValue: fillMode) ?? CosmosDefaultSettings.fillMode
        }
    }
    
    @IBInspectable var textSize: Double = CosmosDefaultSettings.textSize {
        didSet {
            settings.textFont = settings.textFont.withSize(CGFloat(textSize))
        }
    }
    
    @IBInspectable var textMargin: Double = CosmosDefaultSettings.textMargin {
        didSet {
            settings.textMargin = textMargin
        }
    }
    
    @IBInspectable var textColor: UIColor = CosmosDefaultSettings.textColor {
        didSet {
            settings.textColor = textColor
        }
    }
    
    @IBInspectable var updateOnTouch: Bool = CosmosDefaultSettings.updateOnTouch {
        didSet {
            settings.updateOnTouch = updateOnTouch
        }
    }
    
    @IBInspectable var minTouchRating: Double = CosmosDefaultSettings.minTouchRating {
        didSet {
            settings.minTouchRating = minTouchRating
        }
    }

    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        update()
    }
}

import UIKit

struct CosmosTouchTarget {
    static func optimize(_ bounds: CGRect) -> CGRect {
        let recommendedHitSize: CGFloat = 44
        
        var hitWidthIncrease:CGFloat = recommendedHitSize - bounds.width
        var hitHeightIncrease:CGFloat = recommendedHitSize - bounds.height
        
        if hitWidthIncrease < 0 { hitWidthIncrease = 0 }
        if hitHeightIncrease < 0 { hitHeightIncrease = 0 }
        
        let extendedBounds: CGRect = bounds.insetBy(dx: -hitWidthIncrease / 2,
                                                    dy: -hitHeightIncrease / 2)
        
        return extendedBounds
    }
}

import Foundation

public enum StarFillMode: Int {
    case full = 0
    case half = 1
    case precise = 2
}

import UIKit

struct StarLayer {

    static func create(_ starPoints: [CGPoint], size: Double,
                       lineWidth: Double, fillColor: UIColor, strokeColor: UIColor) -> CALayer {
        
        let containerLayer = createContainerLayer(size)
        let path = createStarPath(starPoints, size: size, lineWidth: lineWidth)
        
        let shapeLayer = createShapeLayer(path.cgPath, lineWidth: lineWidth,
                                          fillColor: fillColor, strokeColor: strokeColor, size: size)
        
        containerLayer.addSublayer(shapeLayer)
        
        return containerLayer
    }
    
    static func createShapeLayer(_ path: CGPath, lineWidth: Double, fillColor: UIColor,
                                 strokeColor: UIColor, size: Double) -> CALayer {
        
        let layer = CAShapeLayer()
        layer.anchorPoint = CGPoint()
        layer.contentsScale = UIScreen.main.scale
        layer.strokeColor = strokeColor.cgColor
        layer.fillColor = fillColor.cgColor
        layer.lineWidth = CGFloat(lineWidth)
        layer.bounds.size = CGSize(width: size, height: size)
        layer.masksToBounds = true
        layer.path = path
        layer.isOpaque = true
        return layer
    }
    
    static func createContainerLayer(_ size: Double) -> CALayer {
        let layer = CALayer()
        layer.contentsScale = UIScreen.main.scale
        layer.anchorPoint = CGPoint()
        layer.masksToBounds = true
        layer.bounds.size = CGSize(width: size, height: size)
        layer.isOpaque = true
        return layer
    }

    static func createStarPath(_ starPoints: [CGPoint], size: Double,
                               lineWidth: Double) -> UIBezierPath {
        
        let lineWidthLocal = lineWidth + ceil(lineWidth * 0.3)
        let sizeWithoutLineWidth = size - lineWidthLocal * 2
        
        let points = scaleStar(starPoints, factor: sizeWithoutLineWidth / 100,
                               lineWidth: lineWidthLocal)
        
        let path = UIBezierPath()
        path.move(to: points[0])
        let remainingPoints = Array(points[1..<points.count])
        
        for point in remainingPoints {
            path.addLine(to: point)
        }
        
        path.close()
        return path
    }

    static func scaleStar(_ starPoints: [CGPoint], factor: Double, lineWidth: Double) -> [CGPoint] {
        return starPoints.map { point in
            return CGPoint(
                x: point.x * CGFloat(factor) + CGFloat(lineWidth),
                y: point.y * CGFloat(factor) + CGFloat(lineWidth)
            )
        }
    }
}

