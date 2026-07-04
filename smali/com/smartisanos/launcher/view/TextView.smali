.class public Lcom/smartisanos/launcher/view/TextView;
.super Lcom/smartisanos/smengine/SceneNode;
.source "TextView.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;

.field public static sAppPaint:Landroid/graphics/Paint;

.field public static sAppPaintTemp:Landroid/graphics/Paint;

.field public static sBadgePaint:Landroid/graphics/Paint;

.field public static final sDefaultPaint:Landroid/graphics/Paint;

.field public static sEnoughSpacePaint:Landroid/graphics/Paint;

.field public static sFloatAppPaint:Landroid/graphics/Paint;

.field public static sMultiSlectPaint:Landroid/graphics/Paint;

.field public static sPageTitlePaint:Landroid/graphics/Paint;

.field public static sPageTitlePaintTemp:Landroid/graphics/Paint;


# instance fields
.field private mBackground:Lcom/smartisanos/smengine/RectNode;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextRect:Lcom/smartisanos/smengine/RectNode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/16 v5, 0xff

    .line 33
    const-class v0, Lcom/smartisanos/launcher/view/TextView;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/TextView;->log:Lcom/smartisanos/launcher/LOG;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/view/TextView;->sDefaultPaint:Landroid/graphics/Paint;

    .line 78
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sDefaultPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sDefaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sDefaultPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 81
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sDefaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 82
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sDefaultPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, -0x56000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 83
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sDefaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "z"    # F
    .param p4, "textPaint"    # Landroid/graphics/Paint;
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 169
    if-nez p2, :cond_0

    .line 170
    const-string p2, " "

    .line 172
    :cond_0
    if-nez p4, :cond_1

    .line 173
    sget-object p4, Lcom/smartisanos/launcher/view/TextView;->sDefaultPaint:Landroid/graphics/Paint;

    .line 175
    :cond_1
    iput-object p4, p0, Lcom/smartisanos/launcher/view/TextView;->mTextPaint:Landroid/graphics/Paint;

    .line 176
    iput p5, p0, Lcom/smartisanos/launcher/view/TextView;->mMaxWidth:I

    .line 177
    iput p6, p0, Lcom/smartisanos/launcher/view/TextView;->mMaxHeight:I

    .line 178
    iput-object p2, p0, Lcom/smartisanos/launcher/view/TextView;->mText:Ljava/lang/String;

    .line 179
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/TextView;->setName(Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_mTextRect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    iget v5, p0, Lcom/smartisanos/launcher/view/TextView;->mMaxWidth:I

    iget v6, p0, Lcom/smartisanos/launcher/view/TextView;->mMaxHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/view/TextView;->initTextView(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    .line 182
    return-void
.end method

.method public static applyGaussianDarkLight()V
    .locals 0

    .prologue
    .line 402
    invoke-static {}, Lcom/smartisanos/launcher/view/TextView;->applyTheme()V

    .line 403
    return-void
.end method

.method public static applyTheme()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 373
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sAppPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 374
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sAppPaint:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v2, v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 377
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sAppPaint:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 380
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v2, v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->page_title_text_shadow_color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 383
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->page_title_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sEnoughSpacePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 386
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sEnoughSpacePaint:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 389
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sEnoughSpacePaint:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 392
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v2, v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 395
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    :cond_3
    sput-object v5, Lcom/smartisanos/launcher/view/TextView;->sAppPaintTemp:Landroid/graphics/Paint;

    .line 398
    sput-object v5, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaintTemp:Landroid/graphics/Paint;

    .line 399
    return-void
.end method

.method public static createTempPaintForTheme(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 21
    .param p0, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 418
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    .line 419
    .local v15, "res":Landroid/content/res/Resources;
    const/4 v6, 0x0

    .line 420
    .local v6, "app_text_color":I
    const/4 v4, 0x1

    .line 421
    .local v4, "app_text_bold":I
    const/4 v8, 0x0

    .line 422
    .local v8, "app_text_shadow_color":I
    const/4 v11, 0x0

    .line 423
    .local v11, "page_title_text_color":I
    const/4 v13, 0x0

    .line 425
    .local v13, "page_title_text_shadow_color":I
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->isDefaultTheme(Landroid/content/Context;Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 426
    sget v7, Lcom/smartisanos/launcher/ResIds$color;->def_apps_text_color:I

    .line 427
    .local v7, "app_text_color_id":I
    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 429
    sget v5, Lcom/smartisanos/launcher/ResIds$integer;->text_typeface_bold:I

    .line 430
    .local v5, "app_text_bold_id":I
    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 432
    sget v9, Lcom/smartisanos/launcher/ResIds$color;->def_apps_shadow_color:I

    .line 433
    .local v9, "app_text_shadow_color_id":I
    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 435
    sget v12, Lcom/smartisanos/launcher/ResIds$color;->page_title_text_color:I

    .line 436
    .local v12, "page_title_text_color_id":I
    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 438
    sget v14, Lcom/smartisanos/launcher/ResIds$color;->page_title_text_shadow_color:I

    .line 439
    .local v14, "page_title_text_shadow_color_id":I
    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 472
    .end local v5    # "app_text_bold_id":I
    .end local v7    # "app_text_color_id":I
    .end local v9    # "app_text_shadow_color_id":I
    .end local v12    # "page_title_text_color_id":I
    .end local v14    # "page_title_text_shadow_color_id":I
    :goto_0
    sget v17, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v17 .. v17}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v17

    move-object/from16 v0, v17

    iget v10, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->text_font_size:I

    .line 473
    .local v10, "font_size":I
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    sput-object v17, Lcom/smartisanos/launcher/view/TextView;->sAppPaintTemp:Landroid/graphics/Paint;

    .line 474
    sget-object v17, Lcom/smartisanos/launcher/view/TextView;->sAppPaintTemp:Landroid/graphics/Paint;

    invoke-static {v10}, Lcom/smartisanos/launcher/view/TextView;->applyIconLabelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 475
    sget-object v17, Lcom/smartisanos/launcher/view/TextView;->sAppPaintTemp:Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 476
    sget-object v17, Lcom/smartisanos/launcher/view/TextView;->sAppPaintTemp:Landroid/graphics/Paint;

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 477
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_0

    .line 478
    sget-object v17, Lcom/smartisanos/launcher/view/TextView;->sAppPaintTemp:Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 480
    :cond_0
    sget-object v17, Lcom/smartisanos/launcher/view/TextView;->sAppPaintTemp:Landroid/graphics/Paint;

    sget v18, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sget v19, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sget v20, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 483
    sget-object v17, Lcom/smartisanos/launcher/view/TextView;->sAppPaintTemp:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    sput-object v17, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaintTemp:Landroid/graphics/Paint;

    .line 486
    sget-object v17, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaintTemp:Landroid/graphics/Paint;

    int-to-float v0, v10

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 487
    sget-object v17, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaintTemp:Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 488
    sget-object v17, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaintTemp:Landroid/graphics/Paint;

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 489
    sget-object v17, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaintTemp:Landroid/graphics/Paint;

    sget v18, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sget v19, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sget v20, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 492
    sget-object v17, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaintTemp:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    return-void

    .line 441
    .end local v10    # "font_size":I
    :cond_1
    sget-boolean v17, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v17, :cond_2

    const-string v17, "smartisan_theme_aero"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 442
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    sget-object v17, Lcom/smartisanos/launcher/data/Constants;->sGaussianResSuffix:Ljava/lang/String;

    const-string v18, "_light"

    .line 443
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 444
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/view/TextView;->getGaussianResValue(Landroid/content/res/Resources;Lcom/smartisanos/launcher/theme/Theme;)[I

    move-result-object v16

    .line 445
    .local v16, "value":[I
    const/16 v17, 0x0

    aget v6, v16, v17

    .line 446
    const/16 v17, 0x1

    aget v4, v16, v17

    .line 447
    const/16 v17, 0x2

    aget v8, v16, v17

    .line 448
    const/16 v17, 0x3

    aget v11, v16, v17

    .line 449
    const/16 v17, 0x4

    aget v13, v16, v17

    .line 450
    goto/16 :goto_0

    .line 451
    .end local v16    # "value":[I
    :cond_2
    const-string v17, "def_apps_text_color"

    const-string v18, "color"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 453
    .restart local v7    # "app_text_color_id":I
    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 455
    const-string v17, "text_typeface_bold"

    const-string v18, "integer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 457
    .restart local v5    # "app_text_bold_id":I
    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 459
    const-string v17, "def_apps_shadow_color"

    const-string v18, "color"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 461
    .restart local v9    # "app_text_shadow_color_id":I
    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 463
    const-string v17, "page_title_text_color"

    const-string v18, "color"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 465
    .restart local v12    # "page_title_text_color_id":I
    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 467
    const-string v17, "page_title_text_shadow_color"

    const-string v18, "color"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 469
    .restart local v14    # "page_title_text_shadow_color_id":I
    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    goto/16 :goto_0
.end method

.method private deleteTexture()V
    .locals 3

    .prologue
    .line 406
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TextView;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/smartisanos/smengine/Texture;->createTextTextureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "texName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v1

    .line 408
    .local v1, "tm":Lcom/smartisanos/smengine/TextureManager;
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public static getGaussianResValue(Landroid/content/res/Resources;Lcom/smartisanos/launcher/theme/Theme;)[I
    .locals 14
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 496
    const/4 v2, 0x0

    .line 497
    .local v2, "app_text_color":I
    const/4 v0, 0x1

    .line 498
    .local v0, "app_text_bold":I
    const/4 v4, 0x0

    .line 499
    .local v4, "app_text_shadow_color":I
    const/4 v6, 0x0

    .line 500
    .local v6, "page_title_text_color":I
    const/4 v8, 0x0

    .line 502
    .local v8, "page_title_text_shadow_color":I
    const-string v11, "def_apps_text_color_light"

    const-string v12, "color"

    iget-object v13, p1, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 505
    .local v3, "app_text_color_id":I
    if-gtz v3, :cond_0

    .line 506
    const-string v11, "def_apps_text_color"

    const-string v12, "color"

    iget-object v13, p1, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 509
    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 512
    const-string v11, "text_typeface_bold_light"

    const-string v12, "integer"

    iget-object v13, p1, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 515
    .local v1, "app_text_bold_id":I
    if-gtz v1, :cond_1

    .line 516
    const-string v11, "text_typeface_bold"

    const-string v12, "color"

    iget-object v13, p1, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 519
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 522
    const-string v11, "def_apps_shadow_color_light"

    const-string v12, "color"

    iget-object v13, p1, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 525
    .local v5, "app_text_shadow_color_id":I
    if-gtz v5, :cond_2

    .line 526
    const-string v11, "def_apps_shadow_color"

    const-string v12, "color"

    iget-object v13, p1, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 529
    :cond_2
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 532
    const-string v11, "page_title_text_color_light"

    const-string v12, "color"

    iget-object v13, p1, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 535
    .local v7, "page_title_text_color_id":I
    if-gtz v7, :cond_3

    .line 536
    const-string v11, "page_title_text_color"

    const-string v12, "color"

    iget-object v13, p1, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 539
    :cond_3
    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 542
    const-string v11, "page_title_text_shadow_color_light"

    const-string v12, "color"

    iget-object v13, p1, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 545
    .local v9, "page_title_text_shadow_color_id":I
    if-gtz v9, :cond_4

    .line 546
    const-string v11, "page_title_text_shadow_color"

    const-string v12, "color"

    iget-object v13, p1, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 549
    :cond_4
    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 551
    const/4 v11, 0x5

    new-array v10, v11, [I

    .line 552
    .local v10, "value":[I
    const/4 v11, 0x0

    aput v2, v10, v11

    .line 553
    const/4 v11, 0x1

    aput v0, v10, v11

    .line 554
    const/4 v11, 0x2

    aput v4, v10, v11

    .line 555
    const/4 v11, 0x3

    aput v6, v10, v11

    .line 556
    const/4 v11, 0x4

    aput v8, v10, v11

    .line 557
    return-object v10
.end method

.method private static applyIconLabelSize(I)I
    .locals 3
    .param p0, "fontSize"    # I

    .prologue
    const-string v0, "launcher_icon_label_size"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_not_0

    const/16 v0, 0x50

    goto :goto_ready

    :cond_not_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_not_1

    const/16 v0, 0x5a

    goto :goto_ready

    :cond_not_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_not_2

    const/16 v0, 0x64

    goto :goto_ready

    :cond_not_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_not_3

    const/16 v0, 0x82

    goto :goto_ready

    :cond_not_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_range

    const/16 v0, 0x96

    goto :goto_ready

    :cond_range
    const/16 v1, 0x32

    if-lt v0, v1, :cond_standard

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_standard

    goto :goto_ready

    :cond_standard
    const/16 v0, 0x64

    :goto_ready
    mul-int v2, p0, v0

    div-int/lit8 p0, v2, 0x64

    return p0
.end method

.method public static initTextPaints()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v8, 0xff

    const/4 v7, 0x1

    .line 100
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v0, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->text_font_size:I

    .line 101
    .local v0, "font_size":I
    move v11, v0

    invoke-static {v0}, Lcom/smartisanos/launcher/view/TextView;->applyIconLabelSize(I)I

    move-result v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/smartisanos/launcher/view/TextView;->sAppPaint:Landroid/graphics/Paint;

    .line 102
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sAppPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sAppPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sAppPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_bold:I

    if-ne v7, v2, :cond_0

    .line 106
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sAppPaint:Landroid/graphics/Paint;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 108
    :cond_0
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sAppPaint:Landroid/graphics/Paint;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 111
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sAppPaint:Landroid/graphics/Paint;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    move v0, v11

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaint:Landroid/graphics/Paint;

    .line 114
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaint:Landroid/graphics/Paint;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 117
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaint:Landroid/graphics/Paint;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->page_title_text_shadow_color:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 121
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sPageTitlePaint:Landroid/graphics/Paint;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->page_title_text_color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/smartisanos/launcher/view/TextView;->sFloatAppPaint:Landroid/graphics/Paint;

    .line 124
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v1, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->float_text_font_size:F

    .line 125
    .local v1, "textSize":F
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sFloatAppPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 126
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sFloatAppPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sFloatAppPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 128
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sFloatAppPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 129
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sFloatAppPaint:Landroid/graphics/Paint;

    const v3, 0x3e19999a    # 0.15f

    const/high16 v4, 0x33000000

    invoke-virtual {v2, v3, v10, v9, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 130
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sFloatAppPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 132
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/smartisanos/launcher/view/TextView;->sEnoughSpacePaint:Landroid/graphics/Paint;

    .line 133
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sEnoughSpacePaint:Landroid/graphics/Paint;

    mul-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sEnoughSpacePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sEnoughSpacePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 136
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sEnoughSpacePaint:Landroid/graphics/Paint;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 139
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sEnoughSpacePaint:Landroid/graphics/Paint;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    .line 142
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 148
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sMultiSlectPaint:Landroid/graphics/Paint;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/smartisanos/launcher/view/TextView;->sBadgePaint:Landroid/graphics/Paint;

    .line 151
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sBadgePaint:Landroid/graphics/Paint;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->flag_message_textsize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 152
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sBadgePaint:Landroid/graphics/Paint;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 153
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 154
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sBadgePaint:Landroid/graphics/Paint;

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v2, v3, v10, v9, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 155
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    sget-object v2, Lcom/smartisanos/launcher/view/TextView;->sBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 157
    return-void
.end method

.method private initTextView(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "z"    # F
    .param p4, "textPaint"    # Landroid/graphics/Paint;
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_mTextRect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/smengine/RectNode;->createTextRect(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;ZII)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    .line 187
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 189
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 190
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 191
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 192
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 193
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 194
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 195
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 196
    .local v7, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v7, v8, v8}, Lcom/smartisanos/smengine/mymaterial/Material;->setIsUseMipmap(IZ)V

    .line 198
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/TextView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 199
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 200
    return-void
.end method


# virtual methods
.method public clear(Z)V
    .locals 0
    .param p1, "clearHardwareResource"    # Z

    .prologue
    .line 412
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 413
    if-eqz p1, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/TextView;->deleteTexture()V

    .line 416
    :cond_0
    return-void
.end method

.method public doLayout()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 1
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TextView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/TextView;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_0
.end method

.method public getBackground()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getHeight()F

    move-result v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextView()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getWidth()F

    move-result v0

    goto :goto_0
.end method

.method public setBackground(Lcom/smartisanos/smengine/RectNode;FFF)V
    .locals 1
    .param p1, "background"    # Lcom/smartisanos/smengine/RectNode;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 209
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    .line 210
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/TextView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 211
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p2, p3, p4}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 212
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 213
    return-void
.end method

.method public setBackground(Ljava/lang/String;FFFFF)V
    .locals 5
    .param p1, "resPath"    # Ljava/lang/String;
    .param p2, "w"    # F
    .param p3, "h"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F

    .prologue
    const/4 v4, 0x1

    .line 224
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Text is not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_0
    const-string v1, "text_bg"

    invoke-static {v1, p2, p3, p6, v4}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    .line 229
    .local v0, "back":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 230
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(IZ)V

    .line 232
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 233
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 234
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 235
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 236
    invoke-virtual {p0, v0, p4, p5, p6}, Lcom/smartisanos/launcher/view/TextView;->setBackground(Lcom/smartisanos/smengine/RectNode;FFF)V

    .line 237
    return-void
.end method

.method public setRenderQueue(I)V
    .locals 1
    .param p1, "rq"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 323
    :cond_1
    return-void
.end method

.method public setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V
    .locals 6
    .param p1, "target"    # Lcom/smartisanos/smengine/RenderTarget;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 269
    if-eqz p1, :cond_2

    .line 270
    invoke-virtual {p1, v1, v1}, Lcom/smartisanos/smengine/RenderTarget;->getViewPort(II)Lcom/smartisanos/smengine/ViewPort;

    move-result-object v0

    .line 271
    .local v0, "vp":Lcom/smartisanos/smengine/ViewPort;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 273
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 278
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 291
    .end local v0    # "vp":Lcom/smartisanos/smengine/ViewPort;
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 283
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setViewPort(Lcom/smartisanos/smengine/ViewPort;)V

    .line 286
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 288
    iget-object v1, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setViewPort(Lcom/smartisanos/smengine/ViewPort;)V

    goto :goto_0
.end method

.method public setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;Lcom/smartisanos/smengine/ViewPort;)V
    .locals 5
    .param p1, "target"    # Lcom/smartisanos/smengine/RenderTarget;
    .param p2, "vp"    # Lcom/smartisanos/smengine/ViewPort;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 259
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v1

    invoke-virtual {p2}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v3

    invoke-virtual {p2}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 264
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v1

    invoke-virtual {p2}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v3

    invoke-virtual {p2}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 266
    :cond_1
    return-void
.end method

.method public setViewPort(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 313
    :cond_1
    return-void
.end method

.method public setViewPort(Lcom/smartisanos/smengine/ViewPort;)V
    .locals 1
    .param p1, "vp"    # Lcom/smartisanos/smengine/ViewPort;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setViewPort(Lcom/smartisanos/smengine/ViewPort;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setViewPort(Lcom/smartisanos/smengine/ViewPort;)V

    .line 302
    :cond_1
    return-void
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 561
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 562
    :cond_0
    const-string p1, " "

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v0, :cond_2

    .line 565
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "updateText return by mTextRect is null"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 584
    :goto_0
    return-void

    .line 568
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TextView;->getLayer()I

    move-result v7

    .line 569
    .local v7, "layer":I
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderQueue()I

    move-result v9

    .line 570
    .local v9, "renderQueue":I
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v8

    .line 571
    .local v8, "material":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 573
    .local v3, "z":F
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 574
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 575
    sget-object v0, Lcom/smartisanos/launcher/view/TextView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateText mMaxWidth ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/smartisanos/launcher/view/TextView;->mMaxWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/smartisanos/launcher/view/TextView;->mMaxHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 576
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TextView;->mTextPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/smartisanos/launcher/view/TextView;->mMaxWidth:I

    iget v6, p0, Lcom/smartisanos/launcher/view/TextView;->mMaxHeight:I

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/view/TextView;->initTextView(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    .line 577
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 578
    if-eqz v8, :cond_3

    .line 579
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(IZ)V

    .line 582
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TextView;->mTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 583
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/TextView;->updateGeometricState()V

    goto :goto_0
.end method
