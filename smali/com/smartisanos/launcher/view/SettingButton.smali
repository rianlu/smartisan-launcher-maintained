.class public Lcom/smartisanos/launcher/view/SettingButton;
.super Lcom/smartisanos/smengine/SceneNode;
.source "SettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;
    }
.end annotation


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static final mButtonDownImageName:Ljava/lang/String; = "***settingbuttondown***"

.field private static final mButtonUpImageName:Ljava/lang/String; = "***settingbuttonup***"


# instance fields
.field private animationTime:F

.field public buttonAlreadyDown:Z

.field private mDisplayRect:Lcom/smartisanos/smengine/RectNode;

.field private mIsClicked:Z

.field private mPreStatus:Z

.field private mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

.field private mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

.field private mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

.field private mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

.field private settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/smartisanos/launcher/view/SettingButton;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/SettingButton;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 49
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/SettingButton;->buttonAlreadyDown:Z

    .line 51
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->animationTime:F

    .line 169
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/SettingButton;->mPreStatus:Z

    .line 478
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/SettingButton;->mIsClicked:Z

    .line 65
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SettingButton;->initListener()V

    .line 66
    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/smartisanos/launcher/view/SettingButton;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/view/SettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/SettingButton;->mIsClicked:Z

    return p1
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/view/SettingButton;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SettingButton;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/SettingButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/SettingButton;->changeSettingBtnParent(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/SettingButton;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SettingButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/view/SettingButton;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SettingButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method private changeSettingBtnParent(Z)V
    .locals 1
    .param p1, "added"    # Z

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mPreStatus:Z

    if-ne v0, p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 175
    :cond_0
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/SettingButton;->mPreStatus:Z

    .line 176
    if-eqz p1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/SettingButton;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 178
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/SettingButton;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 179
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/SettingButton;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 180
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/SettingButton;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 181
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 189
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SettingButton;->updateGeometricState()V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 184
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 185
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 186
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 187
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/SettingButton;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_1
.end method

.method private createButtonComposeImage()V
    .locals 33

    .prologue
    .line 116
    sget v29, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v29 .. v29}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v26, v0

    .line 117
    .local v26, "width":I
    sget v29, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v29 .. v29}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v11, v0

    .line 119
    .local v11, "height":I
    const-string v29, "setting_button/editBtn_bg.png"

    invoke-static/range {v29 .. v29}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 120
    .local v16, "settingBtnBgBitmap":Landroid/graphics/Bitmap;
    const-string v29, "setting_button/editBtn_gear.png"

    invoke-static/range {v29 .. v29}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 121
    .local v17, "settingBtnGearBitmap":Landroid/graphics/Bitmap;
    const-string v29, "setting_button/editBtn_inShadow.png"

    invoke-static/range {v29 .. v29}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 122
    .local v18, "settingBtnInShadow":Landroid/graphics/Bitmap;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v29

    move/from16 v0, v26

    move-object/from16 v1, v29

    invoke-static {v0, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 123
    .local v12, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 125
    .local v14, "p":Landroid/graphics/Paint;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    new-instance v19, Landroid/graphics/Rect;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .local v19, "settingRect":Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 129
    .local v6, "bgImgW":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 130
    .local v5, "bgImgH":I
    new-instance v29, Landroid/graphics/Rect;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 131
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 132
    div-int/lit8 v29, v26, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-int/lit8 v30, v26, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    const/high16 v29, 0x42700000    # 60.0f

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 134
    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v29, v0

    div-int/lit8 v27, v29, 0x2

    .line 135
    .local v27, "x":I
    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v29, v0

    div-int/lit8 v28, v29, 0x2

    .line 136
    .local v28, "y":I
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 137
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 138
    .local v10, "gearImgW":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 139
    .local v9, "gearImgH":I
    new-instance v29, Landroid/graphics/Rect;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v30, Landroid/graphics/Rect;

    div-int/lit8 v31, v26, 0x2

    div-int/lit8 v32, v11, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v7, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 140
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 141
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 142
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 143
    .local v21, "shadowImgW":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 144
    .local v20, "shadowImgH":I
    new-instance v29, Landroid/graphics/Rect;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v21

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 145
    new-instance v22, Lcom/smartisanos/smengine/Texture;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    .local v22, "t":Lcom/smartisanos/smengine/Texture;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v24

    .line 147
    .local v24, "tm":Lcom/smartisanos/smengine/TextureManager;
    const-string v29, "***settingbuttondown***"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 148
    const-string v29, "***settingbuttondown***"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 149
    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 151
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v29

    move/from16 v0, v26

    move-object/from16 v1, v29

    invoke-static {v0, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 152
    .local v13, "newBitmap2":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    .local v8, "canvas2":Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 155
    .local v15, "p2":Landroid/graphics/Paint;
    new-instance v29, Landroid/graphics/Rect;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 156
    new-instance v29, Landroid/graphics/Rect;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    new-instance v23, Lcom/smartisanos/smengine/Texture;

    move-object/from16 v0, v23

    invoke-direct {v0, v13}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v23, "t2":Lcom/smartisanos/smengine/Texture;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v25

    .line 160
    .local v25, "tm2":Lcom/smartisanos/smengine/TextureManager;
    const-string v29, "***settingbuttonup***"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 161
    const-string v29, "***settingbuttonup***"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 162
    const/16 v29, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 164
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    return-void
.end method

.method private createDisplayRect()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 98
    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    iget v3, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    .line 99
    .local v3, "width":F
    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    iget v1, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    .line 100
    .local v1, "height":F
    const-string v4, "settingButtonRect"

    const/4 v5, 0x0

    invoke-static {v4, v3, v1, v5, v6}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    .line 101
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "***settingbuttonup***"

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/SettingButton;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 103
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 104
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 105
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 106
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 107
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 108
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 109
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 110
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v2

    .line 111
    .local v2, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v0

    .line 112
    .local v0, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    iget v5, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_BG_LAYER:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 113
    return-void
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/smartisanos/launcher/view/SettingButton$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/SettingButton$1;-><init>(Lcom/smartisanos/launcher/view/SettingButton;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/SettingButton;->setOnClickListener(Lcom/smartisanos/smengine/SceneNode$OnClickListener;)V

    .line 96
    return-void
.end method


# virtual methods
.method public animationIsRunning()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyTheme()V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SettingButton;->createButtonComposeImage()V

    .line 472
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SettingButton;->setNeedDisplay()V

    .line 473
    return-void
.end method

.method public create()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 200
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SettingButton;->createButtonComposeImage()V

    .line 201
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SettingButton;->createDisplayRect()V

    .line 202
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v3

    .line 203
    .local v3, "tm":Lcom/smartisanos/smengine/TextureManager;
    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    float-to-int v2, v4

    .line 205
    .local v2, "size":I
    const-string v4, "setting_button/editBtn_bg.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v2

    invoke-static {v4, v5, v6, v8, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    .line 206
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 207
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 208
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 209
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 210
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 211
    const-string v4, "setting_button/editBtn_bg.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 212
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "setting_button/editBtn_bg.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v1

    .line 214
    .local v1, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v0

    .line 215
    .local v0, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    iget v5, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_BG_LAYER:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 217
    const-string v4, "setting_button/editBtn_pressed_bg.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v2

    invoke-static {v4, v5, v6, v8, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    .line 218
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 219
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 220
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 221
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 222
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 223
    const-string v4, "setting_button/editBtn_pressed_bg.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 224
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "setting_button/editBtn_pressed_bg.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "TextureModularColorMaterial"

    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 226
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    iget v5, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_PRESSED_BG_LAYER:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 228
    const-string v4, "setting_button/editBtn_gear.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v2

    invoke-static {v4, v5, v6, v8, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    .line 229
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 230
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 231
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 232
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 233
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 234
    const-string v4, "setting_button/editBtn_gear.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 235
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "setting_button/editBtn_gear.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    iget v5, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_GEAR_LAYER:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 238
    const-string v4, "setting_button/editBtn_inShadow.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v2

    invoke-static {v4, v5, v6, v8, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    .line 239
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 240
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 241
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 242
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 243
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 244
    const-string v4, "setting_button/editBtn_inShadow.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "setting_button/editBtn_inShadow.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "TextureModularColorMaterial"

    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 247
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v8, v8, v8, v8}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 248
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    iget v5, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_INNER_SHADOW_LAYER:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 249
    neg-int v4, v2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    neg-int v5, v2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/smartisanos/launcher/view/SettingButton;->setLocalBoundingVolume(FFFF)V

    .line 250
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SettingButton;->updateGeometricState()V

    .line 251
    return-void
.end method

.method public handleAnimation(Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "animation"    # Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v3, Lcom/smartisanos/launcher/view/SettingButton$6;->$SwitchMap$com$smartisanos$launcher$view$SettingButton$SETTING_ANIMATION:[I

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 389
    :pswitch_0
    const/4 v15, 0x0

    .line 391
    .local v15, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v15, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 394
    :goto_1
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/view/SettingButton;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "SETTING_BUTTON_DOWN begin"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_1
    new-instance v13, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v13, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 397
    .local v13, "gear_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v14, 0x3e99999a    # 0.3f

    .line 398
    .local v14, "time":F
    invoke-virtual {v13, v14}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 399
    const/16 v3, 0xe

    invoke-virtual {v13, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 400
    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Float;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    new-instance v5, Ljava/lang/Float;

    const v6, -0x4079f56e

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v13, v3, v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 401
    const/4 v3, 0x0

    invoke-virtual {v15, v3, v13}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 404
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 405
    .local v1, "inner_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v1, v14}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 406
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 407
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 411
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 412
    .local v2, "un_pressed_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    new-instance v3, Lcom/smartisanos/launcher/view/SettingButton$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/SettingButton$4;-><init>(Lcom/smartisanos/launcher/view/SettingButton;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 419
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v14

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 420
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 421
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 428
    .end local v1    # "inner_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v2    # "un_pressed_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v13    # "gear_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v14    # "time":F
    .end local v15    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :pswitch_1
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/smartisanos/launcher/view/SettingButton;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "SETTING_BUTTON_UP begin"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_2
    const/4 v15, 0x0

    .line 431
    .restart local v15    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object v15, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 433
    :goto_2
    const v14, 0x3e99999a    # 0.3f

    .line 434
    .restart local v14    # "time":F
    new-instance v13, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v13, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 435
    .restart local v13    # "gear_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v13, v14}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 436
    const/16 v3, 0xe

    invoke-virtual {v13, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 437
    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Float;

    const v5, -0x4079f56e

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    new-instance v5, Ljava/lang/Float;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v13, v3, v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 438
    const/4 v3, 0x0

    invoke-virtual {v15, v3, v13}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 441
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 442
    .restart local v1    # "inner_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v1, v14}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 443
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 444
    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 449
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 450
    .restart local v2    # "un_pressed_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    new-instance v3, Lcom/smartisanos/launcher/view/SettingButton$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/SettingButton$5;-><init>(Lcom/smartisanos/launcher/view/SettingButton;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 458
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v14

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 459
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 460
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 432
    .end local v1    # "inner_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v2    # "un_pressed_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v13    # "gear_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v14    # "time":F
    :catch_0
    move-exception v3

    goto/16 :goto_2

    .line 392
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleTap(Z)V
    .locals 14
    .param p1, "forceFinish"    # Z

    .prologue
    const/16 v13, 0x4000

    const/4 v12, 0x0

    const v11, 0x3f19999a    # 0.6f

    const v10, 0x3e99999a    # 0.3f

    const/4 v9, 0x1

    .line 254
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/smartisanos/launcher/view/SettingButton;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "SettingButton, handleTap"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v6, v7, :cond_2

    .line 256
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/smartisanos/launcher/view/SettingButton;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "handleTap error by current mode is SINGLE_PAGE_MODE"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    iget-object v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_3

    .line 260
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/smartisanos/launcher/view/SettingButton;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "handle animation now !"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    .line 264
    .local v1, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    .line 265
    .local v2, "pageView":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    .line 266
    .local v0, "dockView":Lcom/smartisanos/launcher/view/DockView;
    new-instance v6, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 267
    iget-boolean v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->buttonAlreadyDown:Z

    if-eqz v6, :cond_5

    .line 268
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v6

    invoke-virtual {v6, v13, v9}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 269
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/smartisanos/launcher/view/SettingButton;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "buttonAlreadyDown true !"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 272
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 273
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v3, "params":Ljava/util/ArrayList;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v6, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->SETTING_BUTTON_UP:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    invoke-virtual {p0, v6, v3}, Lcom/smartisanos/launcher/view/SettingButton;->handleAnimation(Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;Ljava/util/ArrayList;)V

    .line 276
    iget-object v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v7, 0x3ee66666    # 0.45f

    invoke-virtual {v1, v6, v7}, Lcom/smartisanos/launcher/view/MainView;->hideStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 277
    invoke-direct {p0, v9}, Lcom/smartisanos/launcher/view/SettingButton;->changeSettingBtnParent(Z)V

    .line 278
    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->HIDE_SORT_BUTTON:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v6, v10, v3}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 279
    sget-object v6, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_NAME:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2, v6, v7, v11}, Lcom/smartisanos/launcher/view/PageView;->upgradePageTitle(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 280
    iget-object v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v7, Lcom/smartisanos/launcher/view/SettingButton$2;

    invoke-direct {v7, p0}, Lcom/smartisanos/launcher/view/SettingButton$2;-><init>(Lcom/smartisanos/launcher/view/SettingButton;)V

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 297
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->showStatusBar()V

    .line 332
    :goto_1
    new-instance v5, Lcom/smartisanos/smengine/Notification;

    invoke-direct {v5}, Lcom/smartisanos/smengine/Notification;-><init>()V

    .line 334
    .local v5, "settingButtonStatus":Lcom/smartisanos/smengine/Notification;
    iget-boolean v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->buttonAlreadyDown:Z

    if-eqz v6, :cond_7

    .line 335
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 339
    .local v4, "result":Ljava/lang/Integer;
    :goto_2
    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 340
    invoke-static {}, Lcom/smartisanos/smengine/NotificationManager;->getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v6

    const-string v7, "settingButtonStatus"

    invoke-virtual {v6, v7, v5}, Lcom/smartisanos/smengine/NotificationManager;->postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 342
    iget-object v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 343
    if-eqz p1, :cond_1

    .line 344
    iget-object v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    goto/16 :goto_0

    .line 299
    .end local v3    # "params":Ljava/util/ArrayList;
    .end local v4    # "result":Ljava/lang/Integer;
    .end local v5    # "settingButtonStatus":Lcom/smartisanos/smengine/Notification;
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/LauncherTracker;->getInstance()Lcom/smartisanos/launcher/LauncherTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/LauncherTracker;->onEventClickEditButton()V

    .line 300
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v6

    invoke-virtual {v6, v13, v9}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 301
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/smartisanos/launcher/view/SettingButton;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "buttonAlreadyDown false !"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 304
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 305
    iget-object v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    iget v7, p0, Lcom/smartisanos/launcher/view/SettingButton;->animationTime:F

    invoke-virtual {v1, v6, v7, v12}, Lcom/smartisanos/launcher/view/MainView;->showStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;FI)V

    .line 306
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .restart local v3    # "params":Ljava/util/ArrayList;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-direct {p0, v9}, Lcom/smartisanos/launcher/view/SettingButton;->changeSettingBtnParent(Z)V

    .line 309
    sget-object v6, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->SETTING_BUTTON_DOWN:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    invoke-virtual {p0, v6, v3}, Lcom/smartisanos/launcher/view/SettingButton;->handleAnimation(Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;Ljava/util/ArrayList;)V

    .line 310
    invoke-virtual {v0, v9}, Lcom/smartisanos/launcher/view/DockView;->setSortButtonVisibleStatus(Z)V

    .line 311
    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SHOW_SORT_BUTTON:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v6, v10, v3}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 312
    sget-object v6, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_EYE_AND_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2, v6, v7, v11}, Lcom/smartisanos/launcher/view/PageView;->upgradePageTitle(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 313
    iget-object v6, p0, Lcom/smartisanos/launcher/view/SettingButton;->settingButtonClickAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v7, Lcom/smartisanos/launcher/view/SettingButton$3;

    invoke-direct {v7, p0}, Lcom/smartisanos/launcher/view/SettingButton$3;-><init>(Lcom/smartisanos/launcher/view/SettingButton;)V

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 328
    goto :goto_1

    .line 337
    .restart local v5    # "settingButtonStatus":Lcom/smartisanos/smengine/Notification;
    :cond_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4    # "result":Ljava/lang/Integer;
    goto :goto_2
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 4
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 350
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SettingButton;->animationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    :goto_0
    return v1

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 364
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getTouchMoveInOutState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 376
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/SettingButton;->changeSettingBtnParent(Z)V

    .line 377
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 378
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_0

    .line 355
    :sswitch_0
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/SettingButton;->handleTap(Z)V

    goto :goto_0

    .line 360
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/SettingButton;->changeSettingBtnParent(Z)V

    goto :goto_0

    .line 366
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/SettingButton;->changeSettingBtnParent(Z)V

    .line 367
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 368
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_0

    .line 372
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/SettingButton;->changeSettingBtnParent(Z)V

    goto :goto_0

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x6 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch

    .line 364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPressed(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 481
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SettingButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 482
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/SettingButton;->mIsClicked:Z

    .line 483
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/SettingButton;->changeSettingBtnParent(Z)V

    .line 484
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 485
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 491
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    .line 492
    return-void

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SettingButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 487
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/SettingButton;->mIsClicked:Z

    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/SettingButton;->changeSettingBtnParent(Z)V

    goto :goto_0
.end method

.method public updateLayer()V
    .locals 4

    .prologue
    .line 496
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateLayer()V

    .line 497
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v1

    .line 498
    .local v1, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v0

    .line 499
    .local v0, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SettingButton;->mDisplayRect:Lcom/smartisanos/smengine/RectNode;

    iget v3, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_BG_LAYER:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 502
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_1

    .line 503
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnBG:Lcom/smartisanos/smengine/RectNode;

    iget v3, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_BG_LAYER:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 505
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_2

    .line 506
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnPressedBG:Lcom/smartisanos/smengine/RectNode;

    iget v3, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_PRESSED_BG_LAYER:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 508
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_3

    .line 509
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnGear:Lcom/smartisanos/smengine/RectNode;

    iget v3, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_GEAR_LAYER:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 511
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_4

    .line 512
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SettingButton;->mSettingBtnInnerShadow:Lcom/smartisanos/smengine/RectNode;

    iget v3, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_INNER_SHADOW_LAYER:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 514
    :cond_4
    return-void
.end method
