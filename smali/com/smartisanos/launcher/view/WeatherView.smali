.class public Lcom/smartisanos/launcher/view/WeatherView;
.super Lcom/smartisanos/launcher/view/ActiveIconView;
.source "WeatherView.java"


# static fields
.field private static final ANIMATION_BACK_DURATION:F = 0.4f

.field private static final ANIMATION_DELAY:F = 0.06f

.field private static final ANIMATION_IN_DURATION:F = 0.35f

.field private static final ANIMATION_IN_TEMPERATURE_GAP:F = 0.02f

.field private static final ANIMATION_OUT_DURATION:F = 0.2f

.field private static final ANIMATION_TIMEOUT:F = 2.0f

.field private static final ANIMATION_TRANSIT_ALPHA_DURATION:F = 0.36f

.field private static final COUNT:I = 0x1

.field private static final DEFAULT_TEMPERATURE:I = 0x19

.field private static final DENSE_FOG_INDEX:I = 0x20

.field private static final DUSTSRORM_INDEX:I = 0x14

.field private static final DUST_INDEX:I = 0x1d

.field private static final EXTRA_HEAVY_DENSE_FOG_INDEX:I = 0x3a

.field public static final FAHRENHEIT_TEMPERATURE_COLUMN_NAME:Ljava/lang/String; = "fahrenheitTemp"

.field private static final FOG_INDEX:I = 0x12

.field private static final GROUP_COUNT:I = 0x2

.field private static final HAZARDOUS_HAZE_INDEX:I = 0x38

.field private static final HAZE_INDEX:I = 0x35

.field private static final HEAVY_DENSE_FOG_INDEX:I = 0x31

.field private static final HEAVY_FOG_INDEX:I = 0x39

.field private static final HEAVY_RAIN_INDEX:I = 0x9

.field private static final HEAVY_RAIN_TO_STORM_INDEX:I = 0x17

.field private static final HEAVY_SNOW_INDEX:I = 0x10

.field private static final HEAVY_SNOW_TO_SNOW_STORM_INDEX:I = 0x1c

.field private static final HEAVY_STORM_INDEX:I = 0xb

.field private static final HEAVY_TO_SEVERE_STORM_INDEX:I = 0x19

.field private static final ICE_RAIN_INDEX:I = 0x13

.field public static final ICON_COLUMN_NAME:Ljava/lang/String; = "weatherCode"

.field private static final INVALID_ICON_INDEX:I = -0x1

.field private static final INVALID_TEMPERATURE:I = -0x12c

.field private static final ITEMS_COUNT:I = 0x6

.field public static final LAST_SYNC_TIME:Ljava/lang/String; = "lastSyncTime"

.field private static final LIGHT_TO_MODERATE_RAIN_INDEX:I = 0x15

.field private static final LIGHT_TO_MODERATE_SNOW_INDEX:I = 0x1a

.field private static final MAX_TEMPERATURE:I = 0x78

.field private static final MAX_TEMPERATURE_FAHRENHEIT:I = 0xf8

.field private static final MINUS:I = 0x5

.field private static final MIN_TEMPERATURE:I = -0x63

.field private static final MIN_TEMPERATURE_FAHRENHEIT:I = -0xd2

.field private static final MODERATER_TO_HEAVY_SNOW_INDEX:I = 0x1b

.field private static final MODERATE_HAZE_INDEX:I = 0x36

.field private static final MODERATE_RAIN_INDEX:I = 0x8

.field private static final MODERATE_SNOW_INDEX:I = 0xf

.field private static final MODERATE_TO_HEAVY_RAIN_INDEX:I = 0x16

.field private static final NEW:I = 0x1

.field private static final NUMBER_00:I = 0x2

.field private static final NUMBER_000:I = 0x4

.field private static final NUMBER_10:I = 0x3

.field private static final OLD:I = 0x0

.field public static final PACKAGE_NAME:Ljava/lang/String;

.field private static final SAND_INDEX:I = 0x1e

.field private static final SAND_STORM_INDEX:I = 0x1f

.field private static final SEVERE_HAZE_INDEX:I = 0x37

.field private static final SEVERE_STORM_INDEX:I = 0xc

.field private static final SLEET_INDEX:I = 0x6

.field private static final SNOW_STORM_INDEX:I = 0x11

.field private static final STORM_INDEX:I = 0xa

.field private static final STORM_TO_HEAVY_STORM_INDEX:I = 0x18

.field public static final SUN_TIME_COLUMN_NAME:Ljava/lang/String; = "_1sunRiseAndSet"

.field public static final TAG:Ljava/lang/String; = "WeatherView"

.field private static final TEMPERATURE_CELSIUS:I = 0x1

.field public static final TEMPERATURE_COLUMN_NAME:Ljava/lang/String; = "temp"

.field private static final TEMPER_ICON:I = 0x1

.field private static final WEATHER:I = 0x0

.field private static final WEATHER_CODE_DEFAULT:Ljava/lang/String; = "1"

.field public static volatile WEATHER_DATA:Landroid/content/Intent; = null

.field private static final WEATHER_NAME_DEFAULT:Ljava/lang/String; = "cloudy"

.field private static final WEATHER_NAME_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field private mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

.field private mBgLayer:I

.field private mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

.field private mCoverLayer:I

.field private mCoverNode:Lcom/smartisanos/smengine/RectNode;

.field private mIconLayer:I

.field private mIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimating:Z

.field private mIsFirstInit:Z

.field private mLastCelsiusTemperature:I

.field private mLastFahrenheitTemperature:I

.field private mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mMinusPos:Lcom/smartisanos/smengine/math/Vector2f;

.field private mNightIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumber00Pos:Lcom/smartisanos/smengine/math/Vector2f;

.field private mNumber10Pos:Lcom/smartisanos/smengine/math/Vector2f;

.field private mRunnable:Ljava/lang/Runnable;

.field private mStencilLayer:I

.field private mStencilNode:Lcom/smartisanos/smengine/SceneNode;

.field private mSunRiseAndSetTime:Ljava/lang/String;

.field private mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

.field private mTemperIconPos:Lcom/smartisanos/smengine/math/Vector2f;

.field private mTemperatureType:I

.field private mTempers:[I

.field private mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mUpdateThread:Ljava/lang/Thread;

.field private mWeatherIconNames:[Ljava/lang/String;

.field private mWeatherPos:Lcom/smartisanos/smengine/math/Vector2f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/smartisanos/launcher/view/WeatherView;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/WeatherView;->log:Lcom/smartisanos/launcher/LOG;

    .line 110
    sget-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    sput-object v0, Lcom/smartisanos/launcher/view/WeatherView;->PACKAGE_NAME:Ljava/lang/String;

    .line 1009
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/view/WeatherView;->WEATHER_DATA:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "boundingCell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, -0x12c

    const/4 v4, 0x2

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/ActiveIconView;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Cell;)V

    .line 107
    iput v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLastCelsiusTemperature:I

    .line 108
    iput v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLastFahrenheitTemperature:I

    .line 135
    new-array v2, v4, [Lcom/smartisanos/smengine/SceneNode;

    iput-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    .line 136
    const/4 v2, 0x6

    filled-new-array {v4, v2}, [I

    move-result-object v2

    const-class v3, Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/smartisanos/smengine/SceneNode;

    iput-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    .line 137
    new-array v2, v4, [Ljava/lang/String;

    iput-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    .line 138
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    .line 140
    iput-boolean v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIsAnimating:Z

    .line 157
    iput v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTemperatureType:I

    .line 159
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIsFirstInit:Z

    .line 164
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getLayStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/LayerManager;->getCellLayer(I)Lcom/smartisanos/launcher/view/LayerManager$CellLayer;

    move-result-object v0

    .line 165
    .local v0, "cellLayer":Lcom/smartisanos/launcher/view/LayerManager$CellLayer;
    iget v2, v0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->ACTIVE_ICON_BASE_LAYER:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBgLayer:I

    .line 166
    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBgLayer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    .line 167
    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverLayer:I

    .line 168
    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverLayer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilLayer:I

    .line 170
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 171
    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/WeatherView;->setVisibility(Z)V

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 173
    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    const-string v3, "cloudy"

    aput-object v3, v2, v1

    .line 174
    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aput v5, v2, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WeatherView;->initMappingList()V

    .line 177
    sget-object v2, Lcom/smartisanos/launcher/view/WeatherView;->WEATHER_DATA:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 178
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->getWeatherDataFromCache(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    sput-object v2, Lcom/smartisanos/launcher/view/WeatherView;->WEATHER_DATA:Landroid/content/Intent;

    .line 180
    :cond_1
    sget-object v2, Lcom/smartisanos/launcher/view/WeatherView;->WEATHER_DATA:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/WeatherView;->handleWeatherData(Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/WeatherView;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/WeatherView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WeatherView;->onAnimComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/WeatherView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/WeatherView;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/WeatherView;->updateWeather(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/WeatherView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/WeatherView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/WeatherView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/WeatherView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/WeatherView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/WeatherView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/view/WeatherView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/WeatherView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    return-object v0
.end method

.method private createBackgroundNode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    .line 204
    const-string v1, "TextureModularColorMaterial"

    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 205
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 206
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v2, "weather/weather_bg.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 208
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 209
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBgLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 210
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 211
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 212
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 213
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 214
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 215
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/WeatherView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 216
    return-void
.end method

.method private createBoundingVolume()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 556
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v0, v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/WeatherView;->setLocalBoundingVolume(FFFF)V

    .line 558
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->updateGeometricState()V

    .line 559
    return-void
.end method

.method private createCoverNode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_cover"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_size:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_size:F

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    .line 221
    const-string v1, "TextureModularColorMaterial"

    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 222
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 223
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    const-string v2, "weather/weather_cover.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 225
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 226
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 227
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 228
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 229
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 230
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 231
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/WeatherView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 232
    return-void
.end method

.method private createStencilNode()V
    .locals 28

    .prologue
    .line 494
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_stencil"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v10

    .line 495
    .local v10, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v10, :cond_5

    .line 496
    const-string v4, "weather/weather_mask.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 497
    .local v2, "bmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 498
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 499
    .local v9, "height":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v17

    .line 500
    .local v17, "bytesPerRow":I
    mul-int v4, v9, v17

    new-array v3, v4, [I

    .line 501
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 502
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v19, "dots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector2f;>;"
    new-instance v25, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct/range {v25 .. v25}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 504
    .local v25, "out":Lcom/smartisanos/smengine/math/Vector2f;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v9, :cond_2

    .line 505
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v5, :cond_1

    .line 506
    mul-int v4, v20, v5

    add-int v4, v4, v21

    aget v18, v3, v4

    .line 507
    .local v18, "c":I
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->alpha(I)I

    move-result v16

    .line 508
    .local v16, "a":I
    if-lez v16, :cond_0

    .line 509
    move/from16 v0, v21

    int-to-float v4, v0

    add-int/lit8 v6, v9, -0x1

    sub-int v6, v6, v20

    int-to-float v6, v6

    int-to-float v7, v5

    int-to-float v8, v9

    move-object/from16 v0, v25

    invoke-static {v4, v6, v7, v8, v0}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 511
    new-instance v27, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct/range {v27 .. v27}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 512
    .local v27, "v":Lcom/smartisanos/smengine/math/Vector2f;
    move-object/from16 v0, v25

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move-object/from16 v0, v27

    iput v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 513
    move-object/from16 v0, v25

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move-object/from16 v0, v27

    iput v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 514
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    .end local v27    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 504
    .end local v16    # "a":I
    .end local v18    # "c":I
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 518
    .end local v21    # "j":I
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    new-array v11, v4, [F

    .line 519
    .local v11, "points":[F
    const/16 v22, 0x0

    .line 520
    .local v22, "k":I
    const/16 v20, 0x0

    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_3

    .line 521
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/smartisanos/smengine/math/Vector2f;

    .line 522
    .restart local v27    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "k":I
    .local v23, "k":I
    move-object/from16 v0, v27

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v4, v11, v22

    .line 523
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "k":I
    .restart local v22    # "k":I
    move-object/from16 v0, v27

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v4, v11, v23

    .line 524
    add-int/lit8 v23, v22, 0x1

    .end local v22    # "k":I
    .restart local v23    # "k":I
    const/4 v4, 0x0

    aput v4, v11, v22

    .line 520
    add-int/lit8 v20, v20, 0x1

    move/from16 v22, v23

    .end local v23    # "k":I
    .restart local v22    # "k":I
    goto :goto_2

    .line 526
    .end local v27    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    move/from16 v0, v22

    if-eq v0, v4, :cond_4

    .line 527
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "create dots error"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 529
    :cond_4
    new-instance v10, Lcom/smartisanos/smengine/Mesh;

    .end local v10    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v10}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 530
    .restart local v10    # "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 531
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_stencil"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 534
    .end local v2    # "bmap":Landroid/graphics/Bitmap;
    .end local v3    # "pixels":[I
    .end local v5    # "width":I
    .end local v9    # "height":I
    .end local v11    # "points":[F
    .end local v17    # "bytesPerRow":I
    .end local v19    # "dots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector2f;>;"
    .end local v20    # "i":I
    .end local v22    # "k":I
    .end local v25    # "out":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_5
    new-instance v4, Lcom/smartisanos/smengine/SceneNode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_stencilNode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 536
    const-string v4, "GlobalColorMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v24

    .line 537
    .local v24, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7, v8, v12}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v26

    .line 541
    .local v26, "rs":Lcom/smartisanos/smengine/RenderState;
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 542
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 543
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsStencilTestEnable(Z)V

    .line 544
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lcom/smartisanos/smengine/RenderState;->setStencilTestFunc(III)V

    .line 545
    const/4 v4, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7}, Lcom/smartisanos/smengine/RenderState;->setStencilOp(III)V

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsPredraw(Z)V

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilLayer:I

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/WeatherView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 553
    return-void
.end method

.method private createSwitchNodes(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    new-instance v1, Lcom/smartisanos/smengine/SceneNode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 236
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/WeatherView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 237
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBgLayer:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 238
    return-void
.end method

.method private getCurrentTime()J
    .locals 18

    .prologue
    .line 1282
    const-wide/16 v10, -0x1

    .line 1283
    .local v10, "time":J
    const-wide/32 v2, 0xea60

    .line 1284
    .local v2, "MILLIS_PER_MINUTE":J
    const-wide/32 v0, 0x36ee80

    .line 1286
    .local v0, "MILLIS_PER_HOUR":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1287
    .local v4, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1288
    const/16 v9, 0xb

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1289
    .local v5, "hour":I
    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1290
    .local v7, "minute":I
    const/16 v9, 0xd

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1291
    .local v8, "second":I
    const/16 v9, 0xe

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1292
    .local v6, "milliSecond":I
    int-to-long v12, v5

    const-wide/32 v14, 0x36ee80

    mul-long/2addr v12, v14

    int-to-long v14, v7

    const-wide/32 v16, 0xea60

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    mul-int/lit16 v9, v8, 0x3e8

    int-to-long v14, v9

    add-long/2addr v12, v14

    int-to-long v14, v6

    add-long v10, v12, v14

    .line 1294
    return-wide v10
.end method

.method private getIconIndexByValue(Ljava/lang/String;)I
    .locals 5
    .param p1, "keyValue"    # Ljava/lang/String;

    .prologue
    .line 1456
    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 1457
    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1458
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1459
    .local v0, "key":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1460
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1461
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1465
    .end local v0    # "key":Ljava/lang/Integer;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private getNightIconIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "keyValue"    # Ljava/lang/String;

    .prologue
    .line 1442
    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 1443
    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1444
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1445
    .local v0, "key":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1446
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1447
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1451
    .end local v0    # "key":Ljava/lang/Integer;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private getNumberImage(I)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # I

    .prologue
    .line 465
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weather number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;)V

    .line 466
    :cond_0
    const/16 v1, 0x78

    if-ge v1, p1, :cond_1

    .line 467
    const/16 p1, 0x78

    .line 469
    :cond_1
    const/16 v1, -0x63

    if-le v1, p1, :cond_2

    .line 470
    const/16 p1, -0x63

    .line 472
    :cond_2
    const-string v1, "weather/num_%s.png"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "imageName":Ljava/lang/String;
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weather image name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;)V

    .line 474
    :cond_3
    return-object v0
.end method

.method private getSwitchAnim()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 25

    .prologue
    .line 822
    new-instance v24, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v24 .. v24}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 824
    .local v24, "timeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x0

    aget-object v5, v5, v11

    invoke-direct {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 825
    .local v2, "oldTrans":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 826
    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 827
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_size:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_margin_top:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v8, v11, v12

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 830
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x0

    aget-object v5, v5, v11

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v20

    .line 833
    .local v20, "childCount":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 834
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x0

    aget-object v5, v5, v11

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v23

    .line 835
    .local v23, "node":Lcom/smartisanos/smengine/SceneNode;
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 836
    .local v3, "oldAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 837
    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 838
    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 840
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 833
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 843
    .end local v3    # "oldAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v23    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_size:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    add-float/2addr v5, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v21, v5, v11

    .line 845
    .local v21, "distanceY":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    const/4 v11, 0x0

    aget-object v5, v5, v11

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iget v6, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 846
    .local v6, "weatherX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v5, v11}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 847
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    const/4 v11, 0x0

    aget-object v5, v5, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/WeatherView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 848
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    const/4 v11, 0x0

    aget-object v5, v5, v11

    move/from16 v0, v21

    neg-float v11, v0

    const/4 v12, 0x0

    invoke-virtual {v5, v6, v11, v12}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/WeatherView;->updateGeometricState()V

    .line 850
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    const/4 v11, 0x0

    aget-object v5, v5, v11

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 851
    .local v4, "newWeatherTrans":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v5, 0x3eb33333    # 0.35f

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 852
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 853
    const/4 v5, 0x0

    move/from16 v0, v21

    neg-float v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_animation_back:F

    const/4 v11, 0x0

    move v9, v6

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 856
    const v5, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 858
    new-instance v7, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    const/4 v11, 0x0

    aget-object v5, v5, v11

    invoke-direct {v7, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 859
    .local v7, "newWeatherTransBack":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 860
    const/16 v5, 0xe

    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 861
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_animation_back:F

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v9, v6

    move v12, v6

    invoke-virtual/range {v7 .. v14}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 864
    const v5, 0x3f0ccccd    # 0.55f

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    const/4 v11, 0x0

    move/from16 v0, v21

    neg-float v12, v0

    const/4 v13, 0x0

    invoke-virtual {v5, v11, v12, v13}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 867
    new-instance v8, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    invoke-direct {v8, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 868
    .local v8, "newTrans":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v5, 0x3ebd70a4    # 0.37f

    invoke-virtual {v8, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 869
    const/16 v5, 0xe

    invoke-virtual {v8, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 870
    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, v21

    neg-float v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_animation_back:F

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 872
    const v5, 0x3e851eb8    # 0.26f

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 874
    new-instance v9, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    invoke-direct {v9, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 875
    .local v9, "newTransBack":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 876
    const/16 v5, 0xe

    invoke-virtual {v9, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 877
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_animation_back:F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 879
    const v5, 0x3f2147ae    # 0.63f

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 881
    const/16 v22, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    array-length v5, v5

    move/from16 v0, v22

    if-ge v0, v5, :cond_2

    .line 882
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    aget-object v23, v5, v22

    .line 883
    .restart local v23    # "node":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v23, :cond_1

    .line 884
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 885
    new-instance v10, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 886
    .local v10, "newAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/high16 v5, 0x3f400000    # 0.75f

    invoke-virtual {v10, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 887
    const/16 v5, 0xe

    invoke-virtual {v10, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 888
    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 890
    const v5, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 881
    .end local v10    # "newAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 894
    .end local v23    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_2
    new-instance v5, Lcom/smartisanos/launcher/view/WeatherView$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/smartisanos/launcher/view/WeatherView$3;-><init>(Lcom/smartisanos/launcher/view/WeatherView;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 908
    return-object v24
.end method

.method private getTemperatureType()I
    .locals 3

    .prologue
    .line 1472
    const/4 v0, 0x1

    .line 1484
    .local v0, "temperatureType":I
    const-string v1, "temperature_unit"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v0

    .line 1485
    return v0
.end method

.method private getTime(Ljava/lang/String;)J
    .locals 20
    .param p1, "strTime"    # Ljava/lang/String;

    .prologue
    .line 1257
    const-wide/16 v12, -0x1

    .line 1259
    .local v12, "time":J
    const-wide/32 v4, 0xea60

    .line 1260
    .local v4, "MILLIS_PER_MINUTE":J
    const-wide/32 v2, 0x36ee80

    .line 1262
    .local v2, "MILLIS_PER_HOUR":J
    const-string v15, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1263
    .local v14, "timeArray":[Ljava/lang/String;
    .line 1267
    :cond_0
    if-eqz v14, :cond_1

    array-length v15, v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    const/4 v15, 0x0

    aget-object v15, v14, v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    aget-object v15, v14, v15

    if-eqz v15, :cond_1

    .line 1270
    const/4 v15, 0x0

    :try_start_0
    aget-object v15, v14, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x36ee80

    mul-long v8, v16, v18

    .line 1271
    .local v8, "millisHour":J
    const/4 v15, 0x1

    aget-object v15, v14, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    const-wide/32 v18, 0xea60

    mul-long v10, v16, v18

    .line 1272
    .local v10, "millisMinute":J
    add-long v12, v8, v10

    .line 1278
    .end local v8    # "millisHour":J
    .end local v10    # "millisMinute":J
    :cond_1
    :goto_1
    return-wide v12

    .line 1273
    :catch_0
    move-exception v6

    .line 1274
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getValidTemp(ZI)I
    .locals 4
    .param p0, "isCelsius"    # Z
    .param p1, "temp"    # I

    .prologue
    .line 1602
    move v2, p1

    .line 1603
    .local v2, "validTemp":I
    const/16 v0, 0x78

    .line 1604
    .local v0, "max":I
    const/16 v1, -0x63

    .line 1605
    .local v1, "min":I
    if-nez p0, :cond_0

    .line 1606
    const/16 v0, 0xf8

    .line 1607
    const/16 v1, -0xd2

    .line 1609
    :cond_0
    if-le p1, v0, :cond_2

    .line 1610
    move v2, v0

    .line 1615
    :cond_1
    :goto_0
    return v2

    .line 1611
    :cond_2
    if-ge p1, v1, :cond_1

    const/16 v3, -0x12c

    if-eq p1, v3, :cond_1

    .line 1613
    move v2, v1

    goto :goto_0
.end method

.method private getWeatherIconNameByIndex(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "iconIndex"    # I
    .param p2, "sunTime"    # Ljava/lang/String;

    .prologue
    .line 1210
    const-string v2, "unknown"

    .line 1211
    .local v2, "name":Ljava/lang/String;
    if-ltz p1, :cond_3

    .line 1212
    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "name":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1213
    .restart local v2    # "name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/WeatherView;->hasNightIcon(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v3, v2

    .line 1234
    .end local v2    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1218
    .end local v3    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    const-string v9, "\\|"

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1219
    .local v8, "timeArray":[Ljava/lang/String;
    if-eqz v8, :cond_1

    array-length v9, v8

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    :cond_1
    move-object v3, v2

    .line 1220
    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1223
    .end local v3    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-direct {p0, v9}, Lcom/smartisanos/launcher/view/WeatherView;->getTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 1224
    .local v4, "riseTime":J
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-direct {p0, v9}, Lcom/smartisanos/launcher/view/WeatherView;->getTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 1225
    .local v6, "setTime":J
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getCurrentTime()J

    move-result-wide v0

    .line 1226
    .local v0, "currentTime":J
    cmp-long v9, v0, v4

    if-lez v9, :cond_4

    cmp-long v9, v0, v6

    if-gtz v9, :cond_4

    .line 1227
    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "name":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .end local v0    # "currentTime":J
    .end local v4    # "riseTime":J
    .end local v6    # "setTime":J
    .end local v8    # "timeArray":[Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v3, v2

    .line 1234
    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1229
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "currentTime":J
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "riseTime":J
    .restart local v6    # "setTime":J
    .restart local v8    # "timeArray":[Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "name":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1
.end method

.method private getWeatherIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "weatherCode"    # Ljava/lang/String;

    .prologue
    .line 1136
    const/4 v3, -0x1

    .line 1137
    .local v3, "index":I
    const/4 v1, -0x1

    .line 1139
    .local v1, "iconIndex":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    .line 1206
    .end local v1    # "iconIndex":I
    .local v2, "iconIndex":I
    :goto_0
    return v2

    .line 1144
    .end local v2    # "iconIndex":I
    .restart local v1    # "iconIndex":I
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1150
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 1151
    packed-switch v3, :pswitch_data_0

    .line 1200
    :pswitch_0
    move v1, v3

    :goto_1
    move v2, v1

    .line 1206
    .end local v1    # "iconIndex":I
    .restart local v2    # "iconIndex":I
    goto :goto_0

    .line 1145
    .end local v2    # "iconIndex":I
    .restart local v1    # "iconIndex":I
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WeatherView: Weather code is error, weather code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;)V

    :cond_1
    move v2, v1

    .line 1147
    .end local v1    # "iconIndex":I
    .restart local v2    # "iconIndex":I
    goto :goto_0

    .line 1158
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "iconIndex":I
    .restart local v1    # "iconIndex":I
    :pswitch_1
    const/16 v1, 0xa

    .line 1159
    goto :goto_1

    .line 1164
    :pswitch_2
    const/16 v1, 0x12

    .line 1165
    goto :goto_1

    .line 1170
    :pswitch_3
    const/16 v1, 0x10

    .line 1171
    goto :goto_1

    .line 1174
    :pswitch_4
    const/4 v1, 0x6

    .line 1175
    goto :goto_1

    .line 1178
    :pswitch_5
    const/16 v1, 0x8

    .line 1179
    goto :goto_1

    .line 1182
    :pswitch_6
    const/16 v1, 0x9

    .line 1183
    goto :goto_1

    .line 1186
    :pswitch_7
    const/16 v1, 0xf

    .line 1187
    goto :goto_1

    .line 1190
    :pswitch_8
    const/16 v1, 0x14

    .line 1191
    goto :goto_1

    .line 1197
    :pswitch_9
    const/16 v1, 0x35

    .line 1198
    goto :goto_1

    .line 1203
    :cond_2
    move v1, v3

    goto :goto_1

    .line 1151
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1624
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1625
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/view/WeatherView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIntent error, ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1633
    :cond_1
    :goto_0
    return-void

    .line 1628
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/view/WeatherView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/WeatherView;

    .line 1629
    .local v0, "wv":Lcom/smartisanos/launcher/view/WeatherView;
    if-eqz v0, :cond_1

    .line 1630
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/smartisanos/launcher/view/WeatherView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "WeatherView"

    const-string v3, "update weather action"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :cond_3
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/WeatherView;->handleWeatherData(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private hasNightIcon(I)Z
    .locals 4
    .param p1, "iconIndex"    # I

    .prologue
    .line 1244
    const/4 v0, 0x0

    .line 1246
    .local v0, "hasNightIcon":Z
    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 1247
    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1248
    .local v1, "iconName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1249
    const/4 v0, 0x1

    .line 1253
    .end local v1    # "iconName":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private initMappingList()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 978
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    .line 979
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sunny_night"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cloudy_night"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "shower_night"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "thundershower_night"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "thundershowerhail_night"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "snow_night"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    .line 988
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sunny"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cloudy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "overcast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "shower"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "thundershower"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "thundershowerhail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "icerain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lightrain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "moderaterain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heavyrain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "storm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "snow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lightsnow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "moderatesnow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heavysnow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "foggy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sandstorm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "haze"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    return-void
.end method

.method private onAnimComplete()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 912
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v8

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 913
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v8

    aget-object v1, v4, v0

    .line 914
    .local v1, "node":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v1, :cond_0

    .line 915
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 912
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 920
    .end local v1    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 921
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 922
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v9

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 923
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v8

    aget-object v1, v4, v0

    .line 924
    .restart local v1    # "node":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v1, :cond_2

    .line 925
    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 922
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 928
    .end local v1    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v8

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 929
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v8

    aget-object v1, v4, v0

    .line 930
    .restart local v1    # "node":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v1, :cond_4

    .line 931
    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 928
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 934
    .end local v1    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_5
    iput-boolean v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIsAnimating:Z

    .line 935
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v8

    aget-object v4, v4, v9

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/WeatherView;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 936
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v8

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 937
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v8

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherPos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherPos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 939
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->updateGeometricState()V

    .line 940
    invoke-virtual {p0, v9}, Lcom/smartisanos/launcher/view/WeatherView;->setVisibility(Z)V

    .line 942
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v4, v9

    .line 943
    .local v3, "tmpc":[Lcom/smartisanos/smengine/SceneNode;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v8

    aput-object v5, v4, v9

    .line 944
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aput-object v3, v4, v8

    .line 946
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v4, v9

    .line 947
    .local v2, "tmp":Lcom/smartisanos/smengine/SceneNode;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v8

    aput-object v5, v4, v9

    .line 948
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v2, v4, v8

    .line 950
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    aget-object v5, v5, v8

    aput-object v5, v4, v9

    .line 951
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v5, v5, v8

    aput v5, v4, v9

    .line 952
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 953
    return-void
.end method

.method private playAnimation()V
    .locals 32

    .prologue
    .line 716
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mIsAnimating:Z

    if-eqz v3, :cond_0

    .line 819
    :goto_0
    return-void

    .line 719
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mIsAnimating:Z

    .line 720
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 721
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/WeatherView;->setVisibility(Z)V

    .line 723
    const/16 v26, 0x0

    .line 724
    .local v26, "needTransitAnim":Z
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v3, v5, :cond_1

    .line 725
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v3

    if-nez v3, :cond_1

    .line 726
    const/16 v26, 0x1

    .line 728
    :cond_1
    const/16 v31, 0x0

    .line 729
    .local v31, "transShow":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/16 v30, 0x0

    .line 730
    .local v30, "transHide":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v26, :cond_3

    .line 731
    new-instance v31, Lcom/smartisanos/smengine/AnimationTimeLine;

    .end local v31    # "transShow":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-direct/range {v31 .. v31}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 732
    .restart local v31    # "transShow":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v4, 0x0

    .line 733
    .local v4, "fromC":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 734
    .local v8, "toC":F
    const/16 v24, 0xe

    .line 735
    .local v24, "eq":I
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 736
    .local v2, "cob":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x3

    move v5, v4

    move v6, v4

    move v7, v4

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 737
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 738
    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 739
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 741
    new-instance v9, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v9, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 742
    .local v9, "coc":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v10, 0x3

    move v11, v4

    move v12, v4

    move v13, v4

    move v14, v4

    move v15, v8

    move/from16 v16, v8

    move/from16 v17, v8

    move/from16 v18, v8

    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 743
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 744
    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 745
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v23

    .line 748
    .local v23, "childCount":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v27

    .line 750
    .local v27, "node":Lcom/smartisanos/smengine/SceneNode;
    new-instance v10, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 751
    .local v10, "oldAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v10, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 752
    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 753
    const/4 v11, 0x3

    move v12, v4

    move v13, v4

    move v14, v4

    move v15, v4

    move/from16 v16, v8

    move/from16 v17, v8

    move/from16 v18, v8

    move/from16 v19, v8

    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 754
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 748
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 757
    .end local v10    # "oldAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v27    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_2
    new-instance v3, Lcom/smartisanos/launcher/view/WeatherView$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/WeatherView$1;-><init>(Lcom/smartisanos/launcher/view/WeatherView;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 767
    new-instance v30, Lcom/smartisanos/smengine/AnimationTimeLine;

    .end local v30    # "transHide":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-direct/range {v30 .. v30}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 768
    .restart local v30    # "transHide":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/high16 v4, 0x3f800000    # 1.0f

    .line 769
    const/4 v8, 0x0

    .line 770
    const/16 v24, 0xd

    .line 772
    new-instance v11, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v11, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 773
    .local v11, "cob1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v12, 0x3

    move v13, v4

    move v14, v4

    move v15, v4

    move/from16 v16, v4

    move/from16 v17, v8

    move/from16 v18, v8

    move/from16 v19, v8

    move/from16 v20, v8

    invoke-virtual/range {v11 .. v20}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 774
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v11, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 775
    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 776
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v11}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 778
    new-instance v12, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 779
    .local v12, "coc1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v13, 0x3

    move v14, v4

    move v15, v4

    move/from16 v16, v4

    move/from16 v17, v4

    move/from16 v18, v8

    move/from16 v19, v8

    move/from16 v20, v8

    move/from16 v21, v8

    invoke-virtual/range {v12 .. v21}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 780
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 781
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 782
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v23

    .line 785
    const/16 v25, 0x0

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v27

    .line 787
    .restart local v27    # "node":Lcom/smartisanos/smengine/SceneNode;
    new-instance v10, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 788
    .restart local v10    # "oldAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v10, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 789
    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 790
    const/4 v14, 0x3

    move-object v13, v10

    move v15, v4

    move/from16 v16, v4

    move/from16 v17, v4

    move/from16 v18, v4

    move/from16 v19, v8

    move/from16 v20, v8

    move/from16 v21, v8

    move/from16 v22, v8

    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 791
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 785
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 795
    .end local v2    # "cob":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v4    # "fromC":F
    .end local v8    # "toC":F
    .end local v9    # "coc":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v10    # "oldAlpha":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "cob1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v12    # "coc1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v23    # "childCount":I
    .end local v24    # "eq":I
    .end local v25    # "i":I
    .end local v27    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_3
    if-eqz v26, :cond_6

    .line 796
    new-instance v28, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v28 .. v28}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 797
    .local v28, "ti":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v31, :cond_4

    .line 798
    const/4 v3, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 800
    :cond_4
    if-eqz v30, :cond_5

    .line 801
    const v3, 0x3f90a3d7    # 1.13f

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 804
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/WeatherView;->getSwitchAnim()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v29

    .line 805
    .local v29, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const v3, 0x3eb851ec    # 0.36f

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 806
    new-instance v3, Lcom/smartisanos/launcher/view/WeatherView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/WeatherView$2;-><init>(Lcom/smartisanos/launcher/view/WeatherView;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 811
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/WeatherView;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 818
    .end local v28    # "ti":Lcom/smartisanos/smengine/AnimationTimeLine;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/WeatherView;->setTimeout()V

    goto/16 :goto_0

    .line 814
    .end local v29    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/WeatherView;->getSwitchAnim()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v29

    .line 815
    .restart local v29    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/WeatherView;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto :goto_3
.end method

.method private postDelayRunnable(JIZ)V
    .locals 3
    .param p1, "delayTime"    # J
    .param p3, "iconIndex"    # I
    .param p4, "isNight"    # Z

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1350
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getLauncherActivity()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    .line 1351
    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1354
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/WeatherView$8;

    invoke-direct {v0, p0, p4, p3}, Lcom/smartisanos/launcher/view/WeatherView$8;-><init>(Lcom/smartisanos/launcher/view/WeatherView;ZI)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mRunnable:Ljava/lang/Runnable;

    .line 1375
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getLauncherActivity()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    .line 1376
    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1377
    return-void
.end method

.method public static requestSync(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1619
    const-string v1, "sync_weather_data"

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/actions/CallExpandService;->callRemoteMethod(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1620
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->handleWeatherDataChange(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1621
    return-void
.end method

.method private setNodeRenderState(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 5
    .param p1, "node"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 478
    if-nez p1, :cond_0

    .line 491
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    .line 482
    .local v0, "rs":Lcom/smartisanos/smengine/RenderState;
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 483
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 484
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 485
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 486
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderState;->setIsStencilTestEnable(Z)V

    .line 487
    invoke-virtual {v0, v3, v3, v3}, Lcom/smartisanos/smengine/RenderState;->setStencilTestFunc(III)V

    .line 488
    invoke-virtual {v0, v4, v4, v4}, Lcom/smartisanos/smengine/RenderState;->setStencilOp(III)V

    .line 490
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsClearStencilBuffer(Z)V

    goto :goto_0
.end method

.method private setTimeout()V
    .locals 4

    .prologue
    .line 1540
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1541
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/view/WeatherView$11;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/WeatherView$11;-><init>(Lcom/smartisanos/launcher/view/WeatherView;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1554
    :cond_0
    return-void
.end method

.method private sunTimeCheck(ILjava/lang/String;)V
    .locals 18
    .param p1, "newIconIndex"    # I
    .param p2, "sunTime"    # Ljava/lang/String;

    .prologue
    .line 1305
    const/4 v6, 0x0

    .line 1306
    .local v6, "isNight":Z
    const-wide/16 v14, 0x0

    .line 1307
    .local v14, "updateDelayTime":J
    const-wide/32 v2, 0x36ee80

    .line 1309
    .local v2, "MILLIS_PER_HOUR":J
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    const-string v16, "\\|"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1314
    .local v7, "timeArray":[Ljava/lang/String;
    if-eqz v7, :cond_0

    array-length v0, v7

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 1318
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/launcher/view/WeatherView;->hasNightIcon(I)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1319
    const/16 v16, 0x0

    aget-object v16, v7, v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/WeatherView;->getTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 1320
    .local v8, "riseTime":J
    const/16 v16, 0x1

    aget-object v16, v7, v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/WeatherView;->getTime(Ljava/lang/String;)J

    move-result-wide v10

    .line 1321
    .local v10, "setTime":J
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/WeatherView;->getCurrentTime()J

    move-result-wide v4

    .line 1322
    .local v4, "currentTime":J
    cmp-long v16, v4, v8

    if-lez v16, :cond_2

    cmp-long v16, v4, v10

    if-gtz v16, :cond_2

    .line 1323
    sub-long v14, v10, v4

    .line 1324
    const/4 v6, 0x1

    .line 1331
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v15, v1, v6}, Lcom/smartisanos/launcher/view/WeatherView;->postDelayRunnable(JIZ)V

    goto :goto_0

    .line 1325
    :cond_2
    cmp-long v16, v4, v10

    if-lez v16, :cond_3

    .line 1326
    const-wide/32 v16, 0x5265c00

    sub-long v12, v16, v4

    .line 1327
    .local v12, "timeBefore":J
    add-long v14, v12, v8

    .line 1328
    goto :goto_1

    .line 1329
    .end local v12    # "timeBefore":J
    :cond_3
    sub-long v14, v8, v4

    goto :goto_1

    .line 1333
    .end local v4    # "currentTime":J
    .end local v8    # "riseTime":J
    .end local v10    # "setTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1334
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/MainView;->getLauncherActivity()Lcom/smartisanos/home/Launcher;

    move-result-object v16

    .line 1335
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mRunnable:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1336
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/WeatherView;->mRunnable:Ljava/lang/Runnable;

    goto/16 :goto_0
.end method

.method private updateMinusNode(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x5

    .line 427
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aget-object v4, v4, v8

    if-nez v4, :cond_0

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_minus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    invoke-static {v4, v5, v6, v11, v10}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    .line 430
    .local v2, "minus":Lcom/smartisanos/smengine/RectNode;
    const-string v4, "TextureModularColorMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 431
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 432
    const-string v4, "weather/num_minus.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v2, v10}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 434
    iget v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 435
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/WeatherView;->setNodeRenderState(Lcom/smartisanos/smengine/SceneNode;)V

    .line 436
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 437
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aput-object v2, v4, v8

    .line 439
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v2    # "minus":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    const/16 v4, -0x12c

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v5, v5, p1

    if-ne v4, v5, :cond_1

    .line 440
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aget-object v4, v4, v8

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 462
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aget-object v4, v4, v8

    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 445
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v4, v4, p1

    if-gez v4, :cond_3

    .line 446
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v4, v4

    div-float v0, v4, v9

    .line 447
    .local v0, "left":F
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    div-float v3, v4, v9

    .line 448
    .local v3, "top":F
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v5, v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 449
    new-instance v4, Lcom/smartisanos/smengine/math/Vector2f;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus00_offsetx:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus00_offsety:F

    sub-float v6, v3, v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mMinusPos:Lcom/smartisanos/smengine/math/Vector2f;

    .line 457
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mMinusPos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mMinusPos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v4, v5, v6, v11}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 458
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aget-object v4, v4, v8

    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 453
    :cond_2
    new-instance v4, Lcom/smartisanos/smengine/math/Vector2f;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus0_offsetx:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus0_offsety:F

    sub-float v6, v3, v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mMinusPos:Lcom/smartisanos/smengine/math/Vector2f;

    goto :goto_1

    .line 460
    .end local v0    # "left":F
    .end local v3    # "top":F
    :cond_3
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aget-object v4, v4, v8

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto/16 :goto_0
.end method

.method private updateNumber000Node(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/16 v7, -0x63

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x4

    .line 384
    const/16 v5, -0x12c

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v6, v6, p1

    if-ne v5, v6, :cond_1

    .line 385
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v8

    if-eqz v5, :cond_0

    .line 386
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v8

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v8

    if-eqz v5, :cond_2

    .line 391
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v8

    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 394
    :cond_2
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v5, v5, p1

    if-ge v5, v7, :cond_5

    .line 395
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aput v7, v5, p1

    .line 401
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v8

    if-nez v5, :cond_4

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_number000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_w:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    invoke-static {v5, v6, v7, v11, v10}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    .line 404
    .local v3, "number000":Lcom/smartisanos/smengine/RectNode;
    const-string v5, "TextureModularColorMaterial"

    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 405
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 406
    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 407
    iget v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 408
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/WeatherView;->setNodeRenderState(Lcom/smartisanos/smengine/SceneNode;)V

    .line 409
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 410
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aput-object v3, v5, v8

    .line 412
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v3    # "number000":Lcom/smartisanos/smengine/RectNode;
    :cond_4
    const/16 v5, 0x64

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v5, v6, :cond_6

    .line 413
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/view/WeatherView;->getNumberImage(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 414
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v5, v5

    div-float v0, v5, v9

    .line 415
    .local v0, "left":F
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    div-float v4, v5, v9

    .line 416
    .local v4, "top":F
    new-instance v2, Lcom/smartisanos/smengine/math/Vector2f;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_offsetx:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_w:F

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_offsety:F

    sub-float v6, v4, v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    invoke-direct {v2, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 419
    .local v2, "mNumber000Pos":Lcom/smartisanos/smengine/math/Vector2f;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v8

    iget v6, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v7, v2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v5, v6, v7, v11}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 420
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v8

    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto/16 :goto_0

    .line 396
    .end local v0    # "left":F
    .end local v2    # "mNumber000Pos":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v4    # "top":F
    :cond_5
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v5, v5, p1

    const/16 v6, 0x78

    if-le v5, v6, :cond_3

    .line 398
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    const/16 v6, 0x78

    aput v6, v5, p1

    goto/16 :goto_1

    .line 422
    :cond_6
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v8

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto/16 :goto_0
.end method

.method private updateNumber00Node(I)V
    .locals 13
    .param p1, "index"    # I

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x2

    const/high16 v9, 0x40000000    # 2.0f

    .line 297
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v10

    if-nez v5, :cond_0

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_number00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    invoke-static {v5, v6, v7, v11, v8}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    .line 300
    .local v2, "number00":Lcom/smartisanos/smengine/RectNode;
    const-string v5, "TextureModularColorMaterial"

    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 301
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 302
    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 303
    iget v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 304
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/WeatherView;->setNodeRenderState(Lcom/smartisanos/smengine/SceneNode;)V

    .line 305
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    invoke-virtual {v5, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 306
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aput-object v2, v5, v10

    .line 308
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v2    # "number00":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    const/16 v5, 0x64

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v5, v6, :cond_1

    const/16 v5, -0x12c

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v6, v6, p1

    if-eq v5, v6, :cond_1

    .line 309
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v10

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 337
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v10

    invoke-virtual {v5, v8}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 313
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    .line 314
    .local v4, "wid":F
    const/16 v5, -0x12c

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v6, v6, p1

    if-ne v5, v6, :cond_2

    .line 315
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    .line 316
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v10

    const-string v6, "weather/num_minus.png"

    invoke-static {v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 317
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v10

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    div-float/2addr v7, v9

    invoke-virtual {v5, v6, v7, v12}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 325
    :goto_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v5, v5

    div-float v0, v5, v9

    .line 326
    .local v0, "left":F
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    div-float v3, v5, v9

    .line 327
    .local v3, "top":F
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 328
    new-instance v5, Lcom/smartisanos/smengine/math/Vector2f;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number00_offsetx:F

    add-float/2addr v6, v0

    div-float v7, v4, v9

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number00_offsety:F

    sub-float v7, v3, v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNumber00Pos:Lcom/smartisanos/smengine/math/Vector2f;

    .line 336
    :goto_2
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v10

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNumber00Pos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNumber00Pos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v5, v6, v7, v11}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto/16 :goto_0

    .line 320
    .end local v0    # "left":F
    .end local v3    # "top":F
    :cond_2
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v10

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/view/WeatherView;->getNumberImage(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 321
    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, p1

    aget-object v5, v5, v10

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v7, v9

    invoke-virtual {v5, v6, v7, v12}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    goto :goto_1

    .line 332
    .restart local v0    # "left":F
    .restart local v3    # "top":F
    :cond_3
    new-instance v5, Lcom/smartisanos/smengine/math/Vector2f;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number0_offsetx:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number0_offsety:F

    sub-float v7, v3, v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNumber00Pos:Lcom/smartisanos/smengine/math/Vector2f;

    goto :goto_2
.end method

.method private updateNumber10Node(I)V
    .locals 14
    .param p1, "index"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x3

    .line 340
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    aget-object v6, v6, v10

    if-nez v6, :cond_0

    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_number10"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    iget-object v8, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    invoke-static {v6, v7, v8, v13, v12}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    .line 343
    .local v3, "number10":Lcom/smartisanos/smengine/RectNode;
    const-string v6, "TextureModularColorMaterial"

    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    .line 344
    .local v2, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 345
    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 346
    iget v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 347
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/WeatherView;->setNodeRenderState(Lcom/smartisanos/smengine/SceneNode;)V

    .line 348
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 349
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    aput-object v3, v6, v10

    .line 351
    .end local v2    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v3    # "number10":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    const/16 v6, 0x64

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v7, v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v6, v7, :cond_1

    const/16 v6, -0x12c

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v7, v7, p1

    if-eq v6, v7, :cond_1

    .line 352
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    aget-object v6, v6, v10

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 381
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    aget-object v6, v6, v10

    invoke-virtual {v6, v12}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 356
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v7, v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v6, v7, :cond_3

    .line 357
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    .line 358
    .local v5, "wid":F
    const/16 v6, -0x12c

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v7, v7, p1

    if-ne v6, v7, :cond_2

    .line 359
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    .line 360
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    aget-object v6, v6, v10

    const-string v7, "weather/num_minus.png"

    invoke-static {v7}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 361
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    div-float/2addr v7, v11

    iget-object v8, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    div-float/2addr v8, v11

    invoke-virtual {v6, v7, v8, v9}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 370
    :goto_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v6, v6

    div-float v1, v6, v11

    .line 371
    .local v1, "left":F
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    div-float v4, v6, v11

    .line 372
    .local v4, "top":F
    new-instance v6, Lcom/smartisanos/smengine/math/Vector2f;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number10_offsetx:F

    add-float/2addr v7, v1

    div-float v8, v5, v11

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number10_offsety:F

    sub-float v8, v4, v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    invoke-direct {v6, v7, v8}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    iput-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNumber10Pos:Lcom/smartisanos/smengine/math/Vector2f;

    .line 375
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNumber10Pos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v8, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNumber10Pos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v6, v7, v8, v13}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 377
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    aget-object v6, v6, v10

    invoke-virtual {v6, v12}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto/16 :goto_0

    .line 364
    .end local v1    # "left":F
    .end local v4    # "top":F
    :cond_2
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v0, v6, 0xa

    .line 366
    .local v0, "digit10":I
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    aget-object v6, v6, v10

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/WeatherView;->getNumberImage(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 367
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    div-float/2addr v7, v11

    iget-object v8, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    div-float/2addr v8, v11

    invoke-virtual {v6, v7, v8, v9}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    goto :goto_1

    .line 379
    .end local v0    # "digit10":I
    .end local v5    # "wid":F
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, p1

    aget-object v6, v6, v10

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto/16 :goto_0
.end method

.method private updateTemperIconNode(I)V
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/16 v7, -0x12c

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    .line 263
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aget-object v4, v4, v9

    if-nez v4, :cond_0

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_temperIcon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_w:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_h:F

    invoke-static {v4, v5, v6, v10, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    .line 267
    .local v2, "temperIcon":Lcom/smartisanos/smengine/RectNode;
    const-string v4, "TextureModularColorMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 268
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 269
    invoke-virtual {v2, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 270
    iget v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 271
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/WeatherView;->setNodeRenderState(Lcom/smartisanos/smengine/SceneNode;)V

    .line 272
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 273
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aput-object v2, v4, v9

    .line 275
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v2    # "temperIcon":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aget-object v4, v4, v9

    const-string v5, "weather/weather_temp.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 276
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v4, v4

    div-float v0, v4, v8

    .line 277
    .local v0, "left":F
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    div-float v3, v4, v8

    .line 278
    .local v3, "top":F
    const/16 v4, 0x63

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v5, v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v4, v4, p1

    if-eq v7, v4, :cond_1

    .line 279
    new-instance v4, Lcom/smartisanos/smengine/math/Vector2f;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp000_offsetx:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_w:F

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp000_offsety:F

    sub-float v6, v3, v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_h:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTemperIconPos:Lcom/smartisanos/smengine/math/Vector2f;

    .line 292
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, p1

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTemperIconPos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTemperIconPos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v4, v5, v6, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 294
    return-void

    .line 282
    :cond_1
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v5, v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aget v4, v4, p1

    if-eq v7, v4, :cond_2

    .line 283
    new-instance v4, Lcom/smartisanos/smengine/math/Vector2f;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp00_offsetx:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_w:F

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp00_offsety:F

    sub-float v6, v3, v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_h:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTemperIconPos:Lcom/smartisanos/smengine/math/Vector2f;

    goto :goto_0

    .line 287
    :cond_2
    new-instance v4, Lcom/smartisanos/smengine/math/Vector2f;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp0_offsetx:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_w:F

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp0_offsety:F

    sub-float v6, v3, v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_h:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTemperIconPos:Lcom/smartisanos/smengine/math/Vector2f;

    goto :goto_0
.end method

.method private updateWeather(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 956
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/WeatherView;->updateWeatherNode(I)V

    .line 957
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/WeatherView;->updateTemperIconNode(I)V

    .line 958
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/WeatherView;->updateNumber00Node(I)V

    .line 959
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/WeatherView;->updateNumber10Node(I)V

    .line 960
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/WeatherView;->updateNumber000Node(I)V

    .line 961
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/WeatherView;->updateMinusNode(I)V

    .line 962
    return-void
.end method

.method private updateWeatherNode(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 241
    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, p1

    aget-object v3, v3, v7

    if-nez v3, :cond_0

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_weather"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    invoke-static {v3, v4, v5, v6, v8}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    .line 244
    .local v2, "weather":Lcom/smartisanos/smengine/RectNode;
    const-string v3, "TextureModularColorMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 245
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 246
    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 247
    iget v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 248
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/WeatherView;->setNodeRenderState(Lcom/smartisanos/smengine/SceneNode;)V

    .line 249
    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, p1

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 250
    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    neg-float v3, v3

    div-float v0, v3, v9

    .line 251
    .local v0, "left":F
    new-instance v3, Lcom/smartisanos/smengine/math/Vector2f;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_offset:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-direct {v3, v4, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherPos:Lcom/smartisanos/smengine/math/Vector2f;

    .line 253
    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherPos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherPos:Lcom/smartisanos/smengine/math/Vector2f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v2, v3, v4, v6}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 254
    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, p1

    aput-object v2, v3, v7

    .line 257
    .end local v0    # "left":F
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v2    # "weather":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, p1

    aget-object v3, v3, v7

    const-string v4, "weather/%s.png"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v5, v7

    .line 258
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 260
    return-void
.end method


# virtual methods
.method public changeWeather()V
    .locals 2

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WeatherView;->playAnimation()V

    .line 966
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v0, v1, :cond_0

    .line 967
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 971
    :goto_0
    return-void

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WeatherView;->updatePageCell()V

    goto :goto_0
.end method

.method public clear(Z)V
    .locals 2
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    .line 1494
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/ActiveIconView;->clear(Z)V

    .line 1495
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1496
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getLauncherActivity()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    .line 1497
    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mUpdateThread:Ljava/lang/Thread;

    .line 1503
    :cond_1
    return-void
.end method

.method public create()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WeatherView;->createBoundingVolume()V

    .line 185
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WeatherView;->createStencilNode()V

    .line 186
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WeatherView;->createBackgroundNode()V

    .line 187
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WeatherView;->createCoverNode()V

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 190
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/WeatherView;->createSwitchNodes(I)V

    .line 191
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/WeatherView;->updateWeather(I)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    const/4 v1, 0x2

    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v1, v2, :cond_1

    .line 194
    sget v1, Lcom/smartisanos/launcher/data/Constants;->icon_scale:F

    sget v2, Lcom/smartisanos/launcher/data/Constants;->icon_scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2, v3}, Lcom/smartisanos/launcher/view/WeatherView;->setScale(FFF)V

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_size:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    add-float/2addr v2, v3

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v4, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 199
    return-void
.end method

.method public createComposedBitmap()Landroid/graphics/Bitmap;
    .locals 29

    .prologue
    .line 562
    const-string v22, "weather/weather_bg.png"

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 563
    .local v4, "bgBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    .line 565
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    .line 563
    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 566
    .local v8, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 567
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 568
    .local v17, "paint":Landroid/graphics/Paint;
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 569
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 571
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/RectF;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    move/from16 v27, v0

    invoke-direct/range {v23 .. v27}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v5, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 575
    const-string v22, "weather/%s.png"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 577
    .local v21, "weatherIcon":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 578
    .local v20, "weatherBitmap":Landroid/graphics/Bitmap;
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_offset:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_offset:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_back_size:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_icon_size:F

    move/from16 v28, v0

    add-float v27, v27, v28

    invoke-direct/range {v23 .. v27}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v17

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 587
    const/4 v15, 0x0

    .line 588
    .local v15, "offx":I
    const/16 v16, 0x0

    .line 590
    .local v16, "offy":I
    const-string v22, "weather/weather_temp.png"

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 591
    .local v18, "tempIconBitmap":Landroid/graphics/Bitmap;
    const/16 v22, 0x63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    const/16 v22, -0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp000_offsetx:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v15, v0

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp000_offsety:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    .line 601
    :goto_0
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/RectF;

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_w:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp_icon_h:F

    move/from16 v28, v0

    add-float v27, v27, v28

    invoke-direct/range {v23 .. v27}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v17

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 605
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    const/16 v23, 0x64

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    const/16 v22, -0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 609
    :cond_0
    const/4 v12, 0x0

    .line 610
    .local v12, "num0Bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_w:F

    move/from16 v19, v0

    .line 611
    .local v19, "w":F
    const/16 v22, -0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 612
    const-string v22, "weather/num_minus.png"

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    move/from16 v19, v0

    .line 618
    :goto_1
    const/16 v22, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number00_offsetx:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v15, v0

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number00_offsety:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    .line 625
    :goto_2
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/RectF;

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    add-float v26, v26, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    move/from16 v28, v0

    add-float v27, v27, v28

    invoke-direct/range {v23 .. v27}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v5, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 630
    const/16 v22, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 631
    const/4 v14, 0x0

    .line 632
    .local v14, "num10Bitmap":Landroid/graphics/Bitmap;
    const/16 v22, -0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 633
    move-object v14, v12

    .line 638
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number10_offsetx:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v15, v0

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number10_offsety:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    .line 640
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/RectF;

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    add-float v26, v26, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    move/from16 v28, v0

    add-float v27, v27, v28

    invoke-direct/range {v23 .. v27}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v5, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 644
    const/16 v22, -0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 645
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 648
    .end local v14    # "num10Bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 663
    .end local v12    # "num0Bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "w":F
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    if-gez v22, :cond_2

    const/16 v22, -0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 664
    const-string v22, "weather/num_minus.png"

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 665
    .local v7, "minusBitmap":Landroid/graphics/Bitmap;
    const/16 v22, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus00_offsetx:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v15, v0

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus00_offsety:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    .line 672
    :goto_5
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/RectF;

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_w:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus_h:F

    move/from16 v28, v0

    add-float v27, v27, v28

    invoke-direct/range {v23 .. v27}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 676
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 679
    .end local v7    # "minusBitmap":Landroid/graphics/Bitmap;
    :cond_2
    const-string v22, "weather/weather_cover.png"

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 680
    .local v6, "coverBitmap":Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 681
    const/16 v16, 0x0

    .line 682
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/RectF;

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_size:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_cover_size:F

    move/from16 v28, v0

    add-float v27, v27, v28

    invoke-direct/range {v23 .. v27}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 687
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 688
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 689
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 691
    return-object v8

    .line 594
    .end local v6    # "coverBitmap":Landroid/graphics/Bitmap;
    :cond_3
    const/16 v22, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    const/16 v22, -0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp00_offsetx:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v15, v0

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp00_offsety:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_0

    .line 598
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp0_offsetx:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v15, v0

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_temp0_offsety:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_0

    .line 615
    .restart local v12    # "num0Bitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "w":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    rem-int/lit8 v22, v22, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/WeatherView;->getNumberImage(I)Ljava/lang/String;

    move-result-object v9

    .line 616
    .local v9, "num0":Ljava/lang/String;
    invoke-static {v9}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto/16 :goto_1

    .line 622
    .end local v9    # "num0":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number0_offsetx:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v15, v0

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number0_offsety:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_2

    .line 635
    .restart local v14    # "num10Bitmap":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    div-int/lit8 v22, v22, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/WeatherView;->getNumberImage(I)Ljava/lang/String;

    move-result-object v13

    .line 636
    .local v13, "num10":Ljava/lang/String;
    invoke-static {v13}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_3

    .line 650
    .end local v12    # "num0Bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "num10":Ljava/lang/String;
    .end local v14    # "num10Bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "w":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    const/16 v23, 0x78

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x78

    aput v24, v22, v23

    .line 654
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/WeatherView;->getNumberImage(I)Ljava/lang/String;

    move-result-object v10

    .line 655
    .local v10, "num000":Ljava/lang/String;
    invoke-static {v10}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 656
    .local v11, "num000Bitmap":Landroid/graphics/Bitmap;
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_offsetx:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_offsety:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_offsetx:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_w:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number000_offsety:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_number_h:F

    move/from16 v28, v0

    add-float v27, v27, v28

    invoke-direct/range {v23 .. v27}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v5, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 660
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    .line 669
    .end local v10    # "num000":Ljava/lang/String;
    .end local v11    # "num000Bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "minusBitmap":Landroid/graphics/Bitmap;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus0_offsetx:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v15, v0

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/WeatherView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->weather_minus0_offsety:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_5
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 1506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/WeatherView;->clear(Z)V

    .line 1507
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1380
    sget-object v0, Lcom/smartisanos/launcher/view/WeatherView;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public handleWeatherData(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1015
    sput-object p1, Lcom/smartisanos/launcher/view/WeatherView;->WEATHER_DATA:Landroid/content/Intent;

    .line 1016
    const/4 v9, 0x0

    .line 1017
    .local v9, "weatherCode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1018
    .local v0, "celsiusTemperature":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1019
    .local v2, "fahrenheitTemperature":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1020
    .local v8, "sunRiseAndSetTime":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1021
    const-string v10, "weatherCode"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1022
    const-string v10, "temp"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    const-string v10, "fahrenheitTemp"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1024
    const-string v10, "_1sunRiseAndSet"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1026
    :cond_0
    .line 1030
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    if-nez v10, :cond_2

    .line 1125
    :cond_1
    :goto_0
    return-void

    .line 1033
    :cond_2
    const/4 v1, 0x0

    .line 1034
    .local v1, "emptyData":Z
    if-nez v9, :cond_3

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-nez v8, :cond_3

    .line 1038
    const/4 v1, 0x1

    .line 1040
    :cond_3
    if-nez v1, :cond_a

    .line 1041
    const/4 v6, 0x0

    .line 1042
    .local v6, "newTemperature":I
    iput-object v8, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSunRiseAndSetTime:Ljava/lang/String;

    .line 1043
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_4

    .line 1044
    sget-object v10, Lcom/smartisanos/launcher/view/WeatherView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "getWeatherData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "weatherCode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", celsiusTemperature:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", fahrenheitTemperature:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSunRiseAndSetTime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSunRiseAndSetTime:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_4
    invoke-direct {p0, v9}, Lcom/smartisanos/launcher/view/WeatherView;->getWeatherIndex(Ljava/lang/String;)I

    move-result v5

    .line 1049
    .local v5, "newIconIndex":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_1

    .line 1050
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1051
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1056
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSunRiseAndSetTime:Ljava/lang/String;

    invoke-direct {p0, v5, v10}, Lcom/smartisanos/launcher/view/WeatherView;->getWeatherIconNameByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1059
    .local v4, "name":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v10, v11}, Lcom/smartisanos/launcher/view/WeatherView;->getValidTemp(ZI)I

    move-result v10

    iput v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLastCelsiusTemperature:I

    .line 1060
    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v10, v11}, Lcom/smartisanos/launcher/view/WeatherView;->getValidTemp(ZI)I

    move-result v10

    iput v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLastFahrenheitTemperature:I

    .line 1061
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getTemperatureType()I

    move-result v7

    .line 1062
    .local v7, "newType":I
    const/4 v10, 0x1

    if-ne v7, v10, :cond_5

    .line 1063
    iget v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLastCelsiusTemperature:I

    .line 1068
    :goto_1
    iput v7, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTemperatureType:I

    .line 1070
    iget-boolean v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIsFirstInit:Z

    if-eqz v10, :cond_8

    .line 1071
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIsFirstInit:Z

    .line 1072
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/4 v10, 0x2

    if-ge v3, v10, :cond_6

    .line 1073
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    aput-object v4, v10, v3

    .line 1074
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aput v6, v10, v3

    .line 1072
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1065
    .end local v3    # "i":I
    :cond_5
    iget v6, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLastFahrenheitTemperature:I

    goto :goto_1

    .line 1076
    .restart local v3    # "i":I
    :cond_6
    new-instance v10, Lcom/smartisanos/launcher/view/WeatherView$4;

    const/16 v11, 0x64

    invoke-direct {v10, p0, v11}, Lcom/smartisanos/launcher/view/WeatherView$4;-><init>(Lcom/smartisanos/launcher/view/WeatherView;I)V

    const/4 v11, 0x0

    .line 1081
    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/WeatherView$4;->send(F)V

    .line 1094
    .end local v3    # "i":I
    :cond_7
    :goto_3
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSunRiseAndSetTime:Ljava/lang/String;

    invoke-direct {p0, v5, v10}, Lcom/smartisanos/launcher/view/WeatherView;->sunTimeCheck(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1082
    :cond_8
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-eq v6, v10, :cond_7

    .line 1084
    :cond_9
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v4, v10, v11

    .line 1085
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    const/4 v11, 0x1

    aput v6, v10, v11

    .line 1086
    new-instance v10, Lcom/smartisanos/launcher/view/WeatherView$5;

    const/16 v11, 0x64

    invoke-direct {v10, p0, v11}, Lcom/smartisanos/launcher/view/WeatherView$5;-><init>(Lcom/smartisanos/launcher/view/WeatherView;I)V

    const/4 v11, 0x0

    .line 1092
    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/WeatherView$5;->send(F)V

    goto :goto_3

    .line 1097
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "newIconIndex":I
    .end local v6    # "newTemperature":I
    .end local v7    # "newType":I
    :cond_a
    const/16 v10, -0x12c

    iget-object v11, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    if-eq v10, v11, :cond_1

    .line 1100
    iget-boolean v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIsFirstInit:Z

    if-eqz v10, :cond_c

    .line 1101
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIsFirstInit:Z

    .line 1102
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    const/4 v10, 0x2

    if-ge v3, v10, :cond_b

    .line 1103
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    const-string v11, "cloudy"

    aput-object v11, v10, v3

    .line 1104
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    const/16 v11, -0x12c

    aput v11, v10, v3

    .line 1102
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1106
    :cond_b
    new-instance v10, Lcom/smartisanos/launcher/view/WeatherView$6;

    const/16 v11, 0x64

    invoke-direct {v10, p0, v11}, Lcom/smartisanos/launcher/view/WeatherView$6;-><init>(Lcom/smartisanos/launcher/view/WeatherView;I)V

    const/4 v11, 0x0

    .line 1111
    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/WeatherView$6;->send(F)V

    .line 1123
    .end local v3    # "i":I
    :goto_5
    const-string v10, "1"

    invoke-direct {p0, v10}, Lcom/smartisanos/launcher/view/WeatherView;->getWeatherIndex(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSunRiseAndSetTime:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/smartisanos/launcher/view/WeatherView;->sunTimeCheck(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1113
    :cond_c
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    const/4 v11, 0x1

    const-string v12, "cloudy"

    aput-object v12, v10, v11

    .line 1114
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    const/4 v11, 0x1

    const/16 v12, -0x12c

    aput v12, v10, v11

    .line 1115
    new-instance v10, Lcom/smartisanos/launcher/view/WeatherView$7;

    const/16 v11, 0x64

    invoke-direct {v10, p0, v11}, Lcom/smartisanos/launcher/view/WeatherView$7;-><init>(Lcom/smartisanos/launcher/view/WeatherView;I)V

    const/4 v11, 0x0

    .line 1121
    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/WeatherView$7;->send(F)V

    goto :goto_5
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1490
    invoke-super {p0}, Lcom/smartisanos/launcher/view/ActiveIconView;->onResume()V

    .line 1491
    return-void
.end method

.method public onTemperatureTypeChange()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1557
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return-void

    .line 1560
    :cond_1
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_2

    .line 1561
    sget-object v2, Lcom/smartisanos/launcher/view/WeatherView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "WeatherView"

    const-string v4, "onTemperatureTypeChange"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getTemperatureType()I

    move-result v1

    .line 1567
    .local v1, "newType":I
    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTemperatureType:I

    if-eq v1, v2, :cond_3

    .line 1568
    iput v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTemperatureType:I

    .line 1570
    :cond_3
    const/16 v0, -0x12c

    .line 1571
    .local v0, "newTemp":I
    if-ne v1, v5, :cond_4

    .line 1572
    iget v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLastCelsiusTemperature:I

    .line 1577
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-eq v0, v2, :cond_0

    .line 1580
    iget-object v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mTempers:[I

    aput v0, v2, v5

    .line 1582
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/smartisanos/launcher/view/WeatherView$12;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/WeatherView$12;-><init>(Lcom/smartisanos/launcher/view/WeatherView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1574
    :cond_4
    iget v0, p0, Lcom/smartisanos/launcher/view/WeatherView;->mLastFahrenheitTemperature:I

    goto :goto_1
.end method

.method public onTimeChange()V
    .locals 13

    .prologue
    .line 1384
    const/4 v3, -0x1

    .line 1385
    .local v3, "iconIndex":I
    const-wide/16 v4, 0x0

    .line 1386
    .local v4, "riseTime":J
    const-wide/16 v6, 0x0

    .line 1387
    .local v6, "setTime":J
    const-wide/16 v0, 0x0

    .line 1389
    .local v0, "currentTime":J
    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconStatus:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    sget-object v10, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSunRiseAndSetTime:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    sget-object v9, Lcom/smartisanos/launcher/view/WeatherView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "WeatherView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTimeChange sunTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSunRiseAndSetTime:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSunRiseAndSetTime:Ljava/lang/String;

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1395
    .local v8, "timeArray":[Ljava/lang/String;
    sget-object v9, Lcom/smartisanos/launcher/view/WeatherView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "WeatherView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTimeChange timeArray:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v8

    if-ge v2, v9, :cond_2

    .line 1397
    sget-object v9, Lcom/smartisanos/launcher/view/WeatherView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "WeatherView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTimeChange timeArray["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v8, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1399
    :cond_2
    if-eqz v8, :cond_0

    array-length v9, v8

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    .line 1402
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-direct {p0, v9}, Lcom/smartisanos/launcher/view/WeatherView;->getTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 1403
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-direct {p0, v9}, Lcom/smartisanos/launcher/view/WeatherView;->getTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 1404
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WeatherView;->getCurrentTime()J

    move-result-wide v0

    .line 1406
    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-direct {p0, v9}, Lcom/smartisanos/launcher/view/WeatherView;->getIconIndexByValue(Ljava/lang/String;)I

    move-result v3

    .line 1407
    if-ltz v3, :cond_5

    .line 1409
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/WeatherView;->hasNightIcon(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1410
    cmp-long v9, v0, v6

    if-gez v9, :cond_3

    cmp-long v9, v0, v4

    if-gez v9, :cond_4

    .line 1411
    :cond_3
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mNightIconMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v11

    .line 1412
    new-instance v9, Lcom/smartisanos/launcher/view/WeatherView$9;

    const/16 v10, 0x64

    invoke-direct {v9, p0, v10}, Lcom/smartisanos/launcher/view/WeatherView$9;-><init>(Lcom/smartisanos/launcher/view/WeatherView;I)V

    const/4 v10, 0x0

    .line 1417
    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/view/WeatherView$9;->send(F)V

    .line 1437
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSunRiseAndSetTime:Ljava/lang/String;

    invoke-direct {p0, v3, v9}, Lcom/smartisanos/launcher/view/WeatherView;->sunTimeCheck(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1421
    :cond_5
    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-direct {p0, v9}, Lcom/smartisanos/launcher/view/WeatherView;->getNightIconIndex(Ljava/lang/String;)I

    move-result v3

    .line 1423
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/WeatherView;->hasNightIcon(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1424
    cmp-long v9, v0, v4

    if-ltz v9, :cond_4

    cmp-long v9, v0, v6

    if-gez v9, :cond_4

    .line 1426
    iget-object v10, p0, Lcom/smartisanos/launcher/view/WeatherView;->mWeatherIconNames:[Ljava/lang/String;

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v11

    .line 1427
    new-instance v9, Lcom/smartisanos/launcher/view/WeatherView$10;

    const/16 v10, 0x64

    invoke-direct {v9, p0, v10}, Lcom/smartisanos/launcher/view/WeatherView$10;-><init>(Lcom/smartisanos/launcher/view/WeatherView;I)V

    const/4 v10, 0x0

    .line 1432
    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/view/WeatherView$10;->send(F)V

    goto :goto_2
.end method

.method public setLayer(I)V
    .locals 3
    .param p1, "layer"    # I

    .prologue
    .line 696
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/ActiveIconView;->setLayer(I)V

    .line 697
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBgLayer:I

    .line 698
    iget v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBgLayer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    .line 699
    iget v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverLayer:I

    .line 700
    iget v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverLayer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilLayer:I

    .line 702
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBgLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 703
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 704
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 705
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBgLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 707
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 708
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 709
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 710
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 711
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v2, p0, Lcom/smartisanos/launcher/view/WeatherView;->mIconLayer:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    :cond_0
    return-void
.end method

.method public setPostLayer(I)V
    .locals 3
    .param p1, "layer"    # I

    .prologue
    .line 1525
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/ActiveIconView;->setPostLayer(I)V

    .line 1526
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 1527
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 1528
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 1529
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1530
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 1531
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 1532
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 1533
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 1534
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 1535
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 1529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1537
    :cond_0
    return-void
.end method

.method public setRenderQueue(I)V
    .locals 3
    .param p1, "rq"    # I

    .prologue
    .line 1510
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/ActiveIconView;->setRenderQueue(I)V

    .line 1511
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1512
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mCoverNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1513
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mStencilNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 1514
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1515
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mSwitchNodes:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 1516
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 1517
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 1518
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 1519
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 1520
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WeatherView;->mChildNodes:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1522
    :cond_0
    return-void
.end method
