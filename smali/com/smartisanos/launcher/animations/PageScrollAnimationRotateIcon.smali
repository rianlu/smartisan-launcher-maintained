.class public Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;
.super Lcom/smartisanos/launcher/animations/PageScrollAnimation;
.source "PageScrollAnimationRotateIcon.java"


# static fields
.field public static final RECT_THICK:I = 0xf

.field private static final SHADOW_SAMPLE_COUNT:I = 0x5a

.field private static final VALUE:F = 0.75f


# instance fields
.field private mAssistNode:Lcom/smartisanos/smengine/SceneNode;

.field private mBackgroundColor:F

.field private mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

.field private mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

.field private mPageScrollShadow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;-><init>()V

    .line 40
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundColor:F

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->setShowShadow(Z)V

    .line 45
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->setEndScrollAnimTime(F)V

    .line 46
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getBackgroundColor()V

    .line 47
    return-void
.end method

.method private adustBackground()V
    .locals 17

    .prologue
    .line 678
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v3, v12

    .line 679
    .local v3, "bgWidth":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v1, v12

    .line 680
    .local v1, "bgHeight":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v5, v12

    .line 681
    .local v5, "bgZ":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v6, v12

    .line 682
    .local v6, "cameraZ":F
    add-float v12, v5, v6

    mul-float/2addr v12, v3

    div-float v4, v12, v6

    .line 683
    .local v4, "bgWidthNew":F
    add-float v12, v5, v6

    mul-float/2addr v12, v1

    div-float v2, v12, v6

    .line 685
    .local v2, "bgHeightNew":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    .line 686
    .local v9, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    sget v13, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 687
    .local v8, "pageY":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v8, v12, v8

    .line 688
    add-float v12, v5, v6

    mul-float/2addr v12, v8

    div-float/2addr v12, v6

    sub-float v11, v8, v12

    .line 689
    .local v11, "y":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 690
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 691
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundColor:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundColor:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundColor:F

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 692
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-nez v12, :cond_0

    .line 693
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    .line 694
    .local v10, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v3

    div-float v4, v12, v6

    .line 695
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x429a0000    # 77.0f

    sub-float v11, v12, v13

    .line 696
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v11

    div-float/2addr v12, v6

    add-float v11, v8, v12

    .line 697
    const/high16 v12, 0x431b0000    # 155.0f

    const/high16 v13, 0x41200000    # 10.0f

    sub-float v13, v5, v13

    add-float/2addr v13, v6

    mul-float/2addr v12, v13

    div-float v2, v12, v6

    .line 698
    const-string v12, "TextureModularColorMaterial"

    invoke-static {v12}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 699
    .local v7, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    const-string v12, "background_shadow_top"

    neg-float v13, v5

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static {v12, v4, v2, v13, v14}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    .line 700
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const-string v13, "page_scroll_shadow_top.png"

    invoke-static {v13}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 703
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 704
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 705
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 706
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 708
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 709
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 711
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    neg-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x41800000    # 16.0f

    add-float v11, v12, v13

    .line 712
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v11

    div-float/2addr v12, v6

    add-float v11, v8, v12

    .line 713
    const/high16 v12, 0x42000000    # 32.0f

    const/high16 v13, 0x41200000    # 10.0f

    sub-float v13, v5, v13

    add-float/2addr v13, v6

    mul-float/2addr v12, v13

    div-float v2, v12, v6

    .line 714
    const-string v12, "TextureModularColorMaterial"

    invoke-static {v12}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 715
    const-string v12, "background_shadow_bottom"

    neg-float v13, v5

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static {v12, v4, v2, v13, v14}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    .line 716
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const-string v13, "page_scroll_shadow_bottom.png"

    invoke-static {v13}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 719
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 720
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 721
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 722
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 723
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 724
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 725
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 731
    .end local v7    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v10    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :goto_0
    return-void

    .line 727
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 728
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    goto :goto_0
.end method

.method private caculateTouchIndex()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 148
    sget v7, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 149
    .local v3, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v7, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_spacing_v:F

    iget v8, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    add-float v0, v7, v8

    .line 150
    .local v0, "cellOccupiedH":F
    iget v7, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_spacing_h:F

    iget v8, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    add-float v1, v7, v8

    .line 151
    .local v1, "cellOccupiedW":F
    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DragLayer;->getDownStartY()F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageY:F

    sub-float v6, v7, v8

    .line 152
    .local v6, "touchY":F
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/DragLayer;->getDownStartX()F

    move-result v7

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v5, v7, v8

    .line 153
    .local v5, "touchX":F
    const/4 v4, 0x0

    .line 154
    .local v4, "row":I
    const/4 v2, 0x0

    .line 155
    .local v2, "col":I
    sget v7, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 156
    div-float v7, v0, v9

    cmpl-float v7, v6, v7

    if-lez v7, :cond_0

    .line 157
    const/4 v4, 0x0

    .line 163
    :goto_0
    neg-float v7, v1

    div-float/2addr v7, v9

    cmpg-float v7, v5, v7

    if-gez v7, :cond_2

    .line 164
    const/4 v2, 0x0

    .line 170
    :goto_1
    mul-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v2

    .line 190
    :goto_2
    return v7

    .line 158
    :cond_0
    neg-float v7, v0

    div-float/2addr v7, v9

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    .line 159
    const/4 v4, 0x2

    goto :goto_0

    .line 161
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 165
    :cond_2
    div-float v7, v1, v9

    cmpl-float v7, v5, v7

    if-lez v7, :cond_3

    .line 166
    const/4 v2, 0x2

    goto :goto_1

    .line 168
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 172
    :cond_4
    cmpl-float v7, v6, v0

    if-lez v7, :cond_5

    .line 173
    const/4 v4, 0x0

    .line 181
    :goto_3
    neg-float v7, v1

    cmpg-float v7, v5, v7

    if-gez v7, :cond_8

    .line 182
    const/4 v2, 0x0

    .line 190
    :goto_4
    mul-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v2

    goto :goto_2

    .line 174
    :cond_5
    cmpl-float v7, v6, v10

    if-lez v7, :cond_6

    .line 175
    const/4 v4, 0x1

    goto :goto_3

    .line 176
    :cond_6
    neg-float v7, v0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_7

    .line 177
    const/4 v4, 0x3

    goto :goto_3

    .line 179
    :cond_7
    const/4 v4, 0x2

    goto :goto_3

    .line 183
    :cond_8
    cmpg-float v7, v5, v10

    if-gez v7, :cond_9

    .line 184
    const/4 v2, 0x1

    goto :goto_4

    .line 185
    :cond_9
    cmpl-float v7, v5, v1

    if-lez v7, :cond_a

    .line 186
    const/4 v2, 0x3

    goto :goto_4

    .line 188
    :cond_a
    const/4 v2, 0x2

    goto :goto_4
.end method

.method private createAssistNode()Lcom/smartisanos/smengine/SceneNode;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 426
    sget v8, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 427
    .local v2, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v8, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v9, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/high16 v10, 0x41f00000    # 30.0f

    const/4 v11, 0x0

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->createMesh(FFF[F)Lcom/smartisanos/smengine/Mesh;

    move-result-object v4

    .line 428
    .local v4, "mesh":Lcom/smartisanos/smengine/Mesh;
    new-instance v0, Lcom/smartisanos/smengine/SceneNode;

    const-string v8, "HELP_PAGE_SCROLL_ANIM_PARENT"

    invoke-direct {v0, v8}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "help":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    .line 430
    .local v6, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 432
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v8, v12, :cond_0

    .line 433
    const/16 v7, 0x9

    .line 437
    .local v7, "size":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_1

    .line 438
    new-instance v5, Lcom/smartisanos/smengine/SceneNode;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HELP_PAGE_SCROLL_ANIM_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 439
    .local v5, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 440
    const-string v8, "SimpleTextureDirLightMaterial"

    invoke-static {v8}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    .line 441
    .local v3, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/mymaterial/Material;->showShadow(Z)V

    .line 442
    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 443
    invoke-virtual {v5, v12}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 444
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 445
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 446
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 447
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 448
    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 435
    .end local v1    # "i":I
    .end local v3    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v5    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v7    # "size":I
    :cond_0
    const/16 v7, 0x10

    .restart local v7    # "size":I
    goto :goto_0

    .line 450
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 451
    return-object v0
.end method

.method private createAssistNodeBlur()Lcom/smartisanos/smengine/SceneNode;
    .locals 17

    .prologue
    .line 455
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v10

    .line 456
    .local v10, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    new-instance v8, Lcom/smartisanos/smengine/SceneNode;

    const-string v1, "HELP_PAGE_SCROLL_ANIM_PARENT"

    invoke-direct {v8, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 457
    .local v8, "help":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v14

    .line 458
    .local v14, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v14, v8}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 460
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 461
    const/16 v15, 0x9

    .line 465
    .local v15, "size":I
    :goto_0
    const/16 v1, 0x8

    new-array v7, v1, [F

    .line 466
    .local v7, "uv":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v15, :cond_1

    .line 467
    new-instance v13, Lcom/smartisanos/smengine/SceneNode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HELP_PAGE_SCROLL_ANIM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 468
    .local v13, "node":Lcom/smartisanos/smengine/SceneNode;
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v16, v1, v9

    .line 469
    .local v16, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v16

    iget v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v16

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageY:F

    add-float/2addr v2, v3

    move-object/from16 v0, v16

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/4 v4, 0x0

    const/high16 v5, 0x41f00000    # 30.0f

    iget v6, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    invoke-static/range {v1 .. v7}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 470
    iget v1, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v2, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/high16 v3, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->createMesh(FFF[F)Lcom/smartisanos/smengine/Mesh;

    move-result-object v12

    .line 471
    .local v12, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-virtual {v13, v12}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 472
    const-string v1, "SimpleTextureDirLightMaterial"

    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v11

    .line 473
    .local v11, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->showShadow(Z)V

    .line 474
    invoke-virtual {v13, v11}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 475
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 476
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 477
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 478
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 479
    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 480
    invoke-virtual {v8, v13}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 466
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 463
    .end local v7    # "uv":[F
    .end local v9    # "i":I
    .end local v11    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v12    # "mesh":Lcom/smartisanos/smengine/Mesh;
    .end local v13    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v15    # "size":I
    .end local v16    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    const/16 v15, 0x10

    .restart local v15    # "size":I
    goto/16 :goto_0

    .line 482
    .restart local v7    # "uv":[F
    .restart local v9    # "i":I
    :cond_1
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 483
    return-object v8
.end method

.method private createEmptyPage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->createEmptyPage(Z)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 96
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 97
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/MainView;->getScrollCamera(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 98
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 99
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 100
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    check-cast v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v5, v5, v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->enableLightEffect(FFF)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 103
    return-void
.end method

.method private createMesh(FFF[F)Lcom/smartisanos/smengine/Mesh;
    .locals 12
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "t"    # F
    .param p4, "texFromBlue"    # [F

    .prologue
    .line 487
    const/4 v10, 0x4

    .line 488
    .local v10, "rectNum":I
    const/16 v5, 0x30

    new-array v1, v5, [F

    .line 489
    .local v1, "points":[F
    const/16 v5, 0x30

    new-array v3, v5, [F

    .line 490
    .local v3, "normals":[F
    const/16 v5, 0x20

    new-array v2, v5, [F

    .line 491
    .local v2, "texPoints":[F
    const/16 v5, 0x18

    new-array v4, v5, [S

    .line 493
    .local v4, "faces":[S
    const/4 v5, 0x0

    neg-float v6, p1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 494
    const/4 v5, 0x1

    neg-float v6, p2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 495
    const/4 v5, 0x2

    neg-float v6, p3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 496
    const/4 v5, 0x3

    neg-float v6, p1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 497
    const/4 v5, 0x4

    neg-float v6, p2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 498
    const/4 v5, 0x5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    aput v6, v1, v5

    .line 499
    const/4 v5, 0x6

    neg-float v6, p1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 500
    const/4 v5, 0x7

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p2, v6

    aput v6, v1, v5

    .line 501
    const/16 v5, 0x8

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    aput v6, v1, v5

    .line 502
    const/16 v5, 0x9

    neg-float v6, p1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 503
    const/16 v5, 0xa

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p2, v6

    aput v6, v1, v5

    .line 504
    const/16 v5, 0xb

    neg-float v6, p3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 506
    const/16 v5, 0xc

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    aput v6, v1, v5

    .line 507
    const/16 v5, 0xd

    neg-float v6, p2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 508
    const/16 v5, 0xe

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    aput v6, v1, v5

    .line 509
    const/16 v5, 0xf

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    aput v6, v1, v5

    .line 510
    const/16 v5, 0x10

    neg-float v6, p2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 511
    const/16 v5, 0x11

    neg-float v6, p3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 512
    const/16 v5, 0x12

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    aput v6, v1, v5

    .line 513
    const/16 v5, 0x13

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p2, v6

    aput v6, v1, v5

    .line 514
    const/16 v5, 0x14

    neg-float v6, p3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 515
    const/16 v5, 0x15

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    aput v6, v1, v5

    .line 516
    const/16 v5, 0x16

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p2, v6

    aput v6, v1, v5

    .line 517
    const/16 v5, 0x17

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    aput v6, v1, v5

    .line 519
    const/16 v5, 0x18

    neg-float v6, p1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 520
    const/16 v5, 0x19

    neg-float v6, p2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 521
    const/16 v5, 0x1a

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    aput v6, v1, v5

    .line 522
    const/16 v5, 0x1b

    neg-float v6, p1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 523
    const/16 v5, 0x1c

    neg-float v6, p2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 524
    const/16 v5, 0x1d

    neg-float v6, p3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 525
    const/16 v5, 0x1e

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    aput v6, v1, v5

    .line 526
    const/16 v5, 0x1f

    neg-float v6, p2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 527
    const/16 v5, 0x20

    neg-float v6, p3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 528
    const/16 v5, 0x21

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    aput v6, v1, v5

    .line 529
    const/16 v5, 0x22

    neg-float v6, p2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 530
    const/16 v5, 0x23

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    aput v6, v1, v5

    .line 532
    const/16 v5, 0x24

    neg-float v6, p1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 533
    const/16 v5, 0x25

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p2, v6

    aput v6, v1, v5

    .line 534
    const/16 v5, 0x26

    neg-float v6, p3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 535
    const/16 v5, 0x27

    neg-float v6, p1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 536
    const/16 v5, 0x28

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p2, v6

    aput v6, v1, v5

    .line 537
    const/16 v5, 0x29

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    aput v6, v1, v5

    .line 538
    const/16 v5, 0x2a

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    aput v6, v1, v5

    .line 539
    const/16 v5, 0x2b

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p2, v6

    aput v6, v1, v5

    .line 540
    const/16 v5, 0x2c

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p3, v6

    aput v6, v1, v5

    .line 541
    const/16 v5, 0x2d

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    aput v6, v1, v5

    .line 542
    const/16 v5, 0x2e

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p2, v6

    aput v6, v1, v5

    .line 543
    const/16 v5, 0x2f

    neg-float v6, p3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v1, v5

    .line 544
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v5, 0x10

    if-ge v7, v5, :cond_4

    .line 545
    mul-int/lit8 v8, v7, 0x3

    .line 546
    .local v8, "index":I
    const/4 v5, 0x4

    if-ge v7, v5, :cond_1

    .line 547
    add-int/lit8 v5, v8, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    aput v6, v3, v5

    .line 548
    add-int/lit8 v5, v8, 0x1

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 549
    add-int/lit8 v5, v8, 0x2

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 544
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 550
    :cond_1
    const/16 v5, 0x8

    if-ge v7, v5, :cond_2

    .line 551
    add-int/lit8 v5, v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v5

    .line 552
    add-int/lit8 v5, v8, 0x1

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 553
    add-int/lit8 v5, v8, 0x2

    const/4 v6, 0x0

    aput v6, v3, v5

    goto :goto_1

    .line 554
    :cond_2
    const/16 v5, 0xc

    if-ge v7, v5, :cond_3

    .line 555
    add-int/lit8 v5, v8, 0x0

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 556
    add-int/lit8 v5, v8, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    aput v6, v3, v5

    .line 557
    add-int/lit8 v5, v8, 0x2

    const/4 v6, 0x0

    aput v6, v3, v5

    goto :goto_1

    .line 558
    :cond_3
    const/16 v5, 0x10

    if-ge v7, v5, :cond_0

    .line 559
    add-int/lit8 v5, v8, 0x0

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 560
    add-int/lit8 v5, v8, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v5

    .line 561
    add-int/lit8 v5, v8, 0x2

    const/4 v6, 0x0

    aput v6, v3, v5

    goto :goto_1

    .line 564
    .end local v8    # "index":I
    :cond_4
    if-nez p4, :cond_5

    .line 565
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_6

    .line 566
    mul-int/lit8 v8, v7, 0x8

    .line 567
    .restart local v8    # "index":I
    add-int/lit8 v5, v8, 0x0

    const/4 v6, 0x0

    aput v6, v2, v5

    .line 568
    add-int/lit8 v5, v8, 0x1

    const/4 v6, 0x0

    aput v6, v2, v5

    .line 569
    add-int/lit8 v5, v8, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v2, v5

    .line 570
    add-int/lit8 v5, v8, 0x3

    const/4 v6, 0x0

    aput v6, v2, v5

    .line 571
    add-int/lit8 v5, v8, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v2, v5

    .line 572
    add-int/lit8 v5, v8, 0x5

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v2, v5

    .line 573
    add-int/lit8 v5, v8, 0x6

    const/4 v6, 0x0

    aput v6, v2, v5

    .line 574
    add-int/lit8 v5, v8, 0x7

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v2, v5

    .line 565
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 577
    .end local v8    # "index":I
    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v10, :cond_6

    .line 578
    mul-int/lit8 v8, v7, 0x8

    .line 579
    .restart local v8    # "index":I
    add-int/lit8 v5, v8, 0x0

    const/4 v6, 0x0

    aget v6, p4, v6

    aput v6, v2, v5

    .line 580
    add-int/lit8 v5, v8, 0x1

    const/4 v6, 0x1

    aget v6, p4, v6

    aput v6, v2, v5

    .line 581
    add-int/lit8 v5, v8, 0x2

    const/4 v6, 0x2

    aget v6, p4, v6

    aput v6, v2, v5

    .line 582
    add-int/lit8 v5, v8, 0x3

    const/4 v6, 0x3

    aget v6, p4, v6

    aput v6, v2, v5

    .line 583
    add-int/lit8 v5, v8, 0x4

    const/4 v6, 0x4

    aget v6, p4, v6

    aput v6, v2, v5

    .line 584
    add-int/lit8 v5, v8, 0x5

    const/4 v6, 0x5

    aget v6, p4, v6

    aput v6, v2, v5

    .line 585
    add-int/lit8 v5, v8, 0x6

    const/4 v6, 0x6

    aget v6, p4, v6

    aput v6, v2, v5

    .line 586
    add-int/lit8 v5, v8, 0x7

    const/4 v6, 0x7

    aget v6, p4, v6

    aput v6, v2, v5

    .line 577
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 589
    .end local v8    # "index":I
    :cond_6
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v10, :cond_7

    .line 590
    mul-int/lit8 v8, v7, 0x6

    .line 591
    .restart local v8    # "index":I
    mul-int/lit8 v9, v7, 0x4

    .line 592
    .local v9, "m":I
    add-int/lit8 v5, v8, 0x0

    add-int/lit8 v6, v9, 0x0

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 593
    add-int/lit8 v5, v8, 0x1

    add-int/lit8 v6, v9, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 594
    add-int/lit8 v5, v8, 0x2

    add-int/lit8 v6, v9, 0x2

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 595
    add-int/lit8 v5, v8, 0x3

    add-int/lit8 v6, v9, 0x2

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 596
    add-int/lit8 v5, v8, 0x4

    add-int/lit8 v6, v9, 0x3

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 597
    add-int/lit8 v5, v8, 0x5

    add-int/lit8 v6, v9, 0x0

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 589
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 599
    .end local v8    # "index":I
    .end local v9    # "m":I
    :cond_7
    new-instance v0, Lcom/smartisanos/smengine/Mesh;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 600
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/Mesh;->create([F[F[F[S[FZ)V

    .line 601
    return-object v0
.end method

.method private createPageScrollShadow()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 633
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v10, "pageScrollShadows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;>;"
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    .line 636
    .local v8, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 637
    const/16 v11, 0x9

    .line 642
    .local v11, "size":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v11, :cond_1

    .line 643
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v12, v0, v7

    .line 644
    .local v12, "v":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageScrollShadow_rotateIcon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v2, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v3, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/16 v5, 0x5a

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageY:F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->create(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    move-result-object v9

    .line 645
    .local v9, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    const/4 v0, 0x0

    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1, v13, v13, v13}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v9, v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 646
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/smartisanos/launcher/view/DragLayer;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 647
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->updateGeometricState()V

    .line 648
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 639
    .end local v7    # "i":I
    .end local v9    # "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    .end local v11    # "size":I
    .end local v12    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    const/16 v11, 0x10

    .restart local v11    # "size":I
    goto :goto_0

    .line 650
    .restart local v7    # "i":I
    :cond_1
    return-object v10
.end method

.method private getBackgroundColor()V
    .locals 2

    .prologue
    .line 669
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "themeId":Ljava/lang/String;
    const-string v1, "smartisan_theme_green"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smartisan_theme_cyan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smartisan_theme_light_wood"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smartisan_theme_yellow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    :cond_0
    const v1, 0x3f0ccccd    # 0.55f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundColor:F

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundColor:F

    goto :goto_0
.end method

.method private getDistance(II)I
    .locals 4
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 409
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 410
    iget v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mTouchIndex:I

    div-int/lit8 v0, v2, 0x3

    .line 411
    .local v0, "col":I
    iget v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mTouchIndex:I

    rem-int/lit8 v1, v2, 0x3

    .line 412
    .local v1, "row":I
    sub-int v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, p2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 416
    :goto_0
    return v2

    .line 414
    .end local v0    # "col":I
    .end local v1    # "row":I
    :cond_0
    iget v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mTouchIndex:I

    div-int/lit8 v0, v2, 0x4

    .line 415
    .restart local v0    # "col":I
    iget v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mTouchIndex:I

    rem-int/lit8 v1, v2, 0x4

    .line 416
    .restart local v1    # "row":I
    sub-int v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, p2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private getIndex(II)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 421
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 422
    .local v0, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    return v1
.end method

.method private getProgressByDistance(I)F
    .locals 3
    .param p1, "distance"    # I

    .prologue
    const/high16 v2, 0x3e800000    # 0.25f

    .line 401
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 402
    int-to-float v0, p1

    mul-float/2addr v0, v2

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    .line 404
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, v2

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private resetBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 734
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 735
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 736
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 737
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 739
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 741
    :cond_0
    return-void
.end method


# virtual methods
.method public onEndScroll()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 107
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 109
    .local v3, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3, v14}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 110
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 111
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 112
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 114
    :cond_1
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v8, :cond_issue69_end_gaussian_done

    invoke-virtual {v3, v14}, Lcom/smartisanos/launcher/view/Page;->showOrHideGaussianBatchBackground(Z)V

    :cond_issue69_end_gaussian_done
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 115
    .local v4, "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 116
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v9

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getIndex(II)I

    move-result v2

    .line 117
    .local v2, "index":I
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v9, v2

    .line 118
    .local v6, "v":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v12, v10, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v12, v9}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 119
    iget v9, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v10, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v11, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v1, v9, v10, v11}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 120
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 121
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/smartisanos/smengine/RectNode;->setTranslateZ(F)V

    .line 123
    :cond_3
    invoke-virtual {v1, v13}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 124
    invoke-virtual {v1, v13}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/smartisanos/smengine/RectNode;->setTranslateZ(F)V

    .line 126
    :cond_4
    invoke-virtual {v1, v14}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 127
    invoke-virtual {v1, v14}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/smartisanos/smengine/RectNode;->setTranslateZ(F)V

    goto :goto_0

    .line 131
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "index":I
    .end local v3    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v4    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v6    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_5
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v7, :cond_6

    .line 132
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v7, v13}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 134
    :cond_6
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v7, :cond_7

    .line 135
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v7, v13}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 137
    :cond_7
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    .line 138
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    .line 139
    .local v5, "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    invoke-virtual {v5, v13}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setVisibility(Z)V

    goto :goto_1

    .line 142
    .end local v5    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/DragLayer;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 143
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->resetBackground()V

    .line 144
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->disableBatchPageLightEffect()V

    .line 145
    return-void
.end method

.method public onRelease()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 606
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->removeEmptyPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 608
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 612
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 613
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 616
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    .line 617
    .local v0, "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 618
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->clear(Z)V

    goto :goto_0

    .line 620
    .end local v0    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    :cond_2
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    .line 622
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_4

    .line 623
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 624
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 625
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    .line 626
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 627
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 628
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    .line 630
    :cond_4
    return-void
.end method

.method public onStartScroll()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x40400000    # 3.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 51
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v5

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/view/MainView;->getScrollCamera(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/DragLayer;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 52
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->adustBackground()V

    .line 53
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->createEmptyPage()V

    .line 54
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 56
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 57
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 58
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 59
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 61
    :cond_1
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_issue69_start_gaussian_done

    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Page;->showOrHideGaussianBatchBackground(Z)V

    :cond_issue69_start_gaussian_done
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v3

    .line 62
    .local v3, "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 63
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 64
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateZ(F)V

    .line 66
    :cond_3
    invoke-virtual {v1, v9}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 67
    invoke-virtual {v1, v9}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateZ(F)V

    .line 69
    :cond_4
    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 70
    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/view/Cell;->getFlagRect(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateZ(F)V

    goto :goto_0

    .line 74
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_5
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    if-nez v5, :cond_6

    .line 75
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_8

    .line 76
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->createAssistNodeBlur()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    .line 81
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 82
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    .line 83
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->createPageScrollShadow()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    .line 85
    :cond_7
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    .line 86
    .local v4, "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setVisibility(Z)V

    goto :goto_2

    .line 78
    .end local v4    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;
    :cond_8
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->createAssistNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    goto :goto_1

    .line 89
    :cond_9
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->caculateTouchIndex()I

    move-result v5

    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mTouchIndex:I

    .line 90
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v12, v12, v6}, Lcom/smartisanos/launcher/view/MainView;->enableBatchPageLightEffect(FFF)V

    .line 91
    return-void
.end method

.method public onThemeChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 655
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onThemeChanged()V

    .line 656
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->removeEmptyPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 658
    iput-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 662
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 663
    iput-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    .line 665
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getBackgroundColor()V

    .line 666
    return-void
.end method

.method public pressedHomeKey()V
    .locals 9

    .prologue
    const/16 v3, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->startScroll()F

    .line 197
    iput v8, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mTouchIndex:I

    .line 198
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mScrollProcress:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 199
    iput v8, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mTouchIndex:I

    .line 200
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 201
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 202
    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mScrollProcress:F

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v4, 0x3eb851ec    # 0.36f

    new-instance v5, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$1;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$1;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->playAnimation(FFLaurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V

    .line 210
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1, v8}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 229
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 213
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 214
    const/high16 v7, -0x41800000    # -0.25f

    .line 215
    .local v7, "toProgress":F
    const/high16 v3, -0x41800000    # -0.25f

    sget-object v4, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v5, 0x3dcccccd    # 0.1f

    new-instance v6, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->playAnimationWithoutCallBack(FFLaurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V

    .line 227
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1, v8}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    goto :goto_0
.end method

.method public updateVisiblePageStatus()V
    .locals 29

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mScrollProcress:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mCurrentPageIndex:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v17, v22, v23

    .line 234
    .local v17, "progress":F
    const/16 v22, 0x0

    cmpl-float v22, v17, v22

    if-lez v22, :cond_e

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 239
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v16

    .line 242
    .local v16, "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Cell;

    .line 243
    .local v10, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v18

    .line 244
    .local v18, "row":I
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v11

    .line 245
    .local v11, "col":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getIndex(II)I

    move-result v14

    .line 246
    .local v14, "index":I
    sget-object v22, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v19, v22, v14

    .line 247
    .local v19, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getDistance(II)I

    move-result v12

    .line 249
    .local v12, "distance":I
    sget v22, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 250
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getProgressByDistance(I)F

    move-result v22

    sub-float v22, v17, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3fe8000000000000L    # 0.75

    div-double v8, v24, v26

    .line 254
    .local v8, "angle":D
    :goto_1
    const-wide v24, 0x400921fb54442d18L    # Math.PI

    cmpl-double v22, v8, v24

    if-lez v22, :cond_4

    .line 255
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 260
    :cond_1
    :goto_2
    const-wide/high16 v24, -0x3fd2000000000000L    # -15.0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v20, v0

    .line 261
    .local v20, "x":F
    const-wide/high16 v24, 0x402e000000000000L    # 15.0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    .line 262
    .local v21, "z":F
    neg-double v0, v8

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v22, v0

    new-instance v24, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 263
    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v22, v0

    add-float v22, v22, v20

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v25, v0

    add-float v25, v25, v21

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 265
    const-wide v24, 0x400921fb54442d18L    # Math.PI

    sub-double v24, v24, v8

    const-wide v26, 0x4056800000000000L    # 90.0

    mul-double v24, v24, v26

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v7, v0

    .line 266
    .local v7, "animIndex":I
    const/16 v22, 0x5a

    move/from16 v0, v22

    if-lt v7, v0, :cond_2

    const/4 v7, 0x0

    .line 267
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setDrawAnimIndex(II)V

    .line 268
    int-to-float v0, v7

    move/from16 v22, v0

    const/high16 v24, 0x42340000    # 45.0f

    sub-float v22, v22, v24

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const/high16 v24, 0x42340000    # 45.0f

    div-float v6, v22, v24

    .line 269
    .local v6, "alpha":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v27, v27, v6

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v27, v27, v28

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setColor(FFFF)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v15

    .line 272
    .local v15, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3f847ae140000000L    # 0.009999999776482582

    cmpl-double v22, v24, v26

    if-lez v22, :cond_6

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    sub-double v24, v8, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3f847ae140000000L    # 0.009999999776482582

    cmpl-double v22, v24, v26

    if-lez v22, :cond_6

    .line 273
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 274
    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageY:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const/high16 v25, -0x3e900000    # -15.0f

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v15, v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 275
    neg-double v0, v8

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v22, v0

    new-instance v24, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 276
    sget-boolean v22, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v22, :cond_5

    .line 277
    const-string v22, "t_blur_background"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    .end local v6    # "alpha":F
    .end local v7    # "animIndex":I
    .end local v8    # "angle":D
    .end local v15    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v20    # "x":F
    .end local v21    # "z":F
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getProgressByDistance(I)F

    move-result v22

    sub-float v22, v17, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3fe8000000000000L    # 0.75

    div-double v8, v24, v26

    .restart local v8    # "angle":D
    goto/16 :goto_1

    .line 256
    :cond_4
    const-wide/16 v24, 0x0

    cmpg-double v22, v8, v24

    if-gez v22, :cond_1

    .line 257
    const-wide/16 v8, 0x0

    goto/16 :goto_2

    .line 279
    .restart local v6    # "alpha":F
    .restart local v7    # "animIndex":I
    .restart local v15    # "node":Lcom/smartisanos/smengine/SceneNode;
    .restart local v20    # "x":F
    .restart local v21    # "z":F
    :cond_5
    move/from16 v0, v18

    invoke-static {v0, v11}, Lcom/smartisanos/launcher/view/Page;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v13

    .line 280
    .local v13, "imageName":Ljava/lang/String;
    invoke-virtual {v15, v13}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    .end local v13    # "imageName":Ljava/lang/String;
    :cond_6
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto/16 :goto_0

    .line 286
    .end local v6    # "alpha":F
    .end local v7    # "animIndex":I
    .end local v8    # "angle":D
    .end local v10    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "col":I
    .end local v12    # "distance":I
    .end local v14    # "index":I
    .end local v15    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v18    # "row":I
    .end local v19    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "x":F
    .end local v21    # "z":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 289
    .end local v16    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v16

    .line 292
    .restart local v16    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Cell;

    .line 293
    .restart local v10    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v18

    .line 294
    .restart local v18    # "row":I
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v11

    .line 295
    .restart local v11    # "col":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getIndex(II)I

    move-result v14

    .line 296
    .restart local v14    # "index":I
    sget-object v23, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v19, v23, v14

    .line 297
    .restart local v19    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getDistance(II)I

    move-result v12

    .line 299
    .restart local v12    # "distance":I
    sget v23, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 300
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getProgressByDistance(I)F

    move-result v23

    sub-float v23, v17, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3fe8000000000000L    # 0.75

    div-double v8, v24, v26

    .line 304
    .restart local v8    # "angle":D
    :goto_4
    const-wide v24, 0x400921fb54442d18L    # Math.PI

    cmpl-double v23, v8, v24

    if-lez v23, :cond_b

    .line 305
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 309
    :cond_9
    :goto_5
    const-wide/high16 v24, 0x402e000000000000L    # 15.0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v20, v0

    .line 310
    .restart local v20    # "x":F
    const-wide/high16 v24, -0x3fd2000000000000L    # -15.0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    .line 311
    .restart local v21    # "z":F
    neg-double v0, v8

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v23, v0

    new-instance v24, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 312
    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v23, v0

    add-float v23, v23, v20

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v25, v0

    add-float v25, v25, v21

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto/16 :goto_3

    .line 302
    .end local v8    # "angle":D
    .end local v20    # "x":F
    .end local v21    # "z":F
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getProgressByDistance(I)F

    move-result v23

    sub-float v23, v17, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3fe8000000000000L    # 0.75

    div-double v8, v24, v26

    .restart local v8    # "angle":D
    goto/16 :goto_4

    .line 306
    :cond_b
    const-wide/16 v24, 0x0

    cmpg-double v23, v8, v24

    if-gez v23, :cond_9

    .line 307
    const-wide/16 v8, 0x0

    goto/16 :goto_5

    .line 314
    .end local v8    # "angle":D
    .end local v10    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "col":I
    .end local v12    # "distance":I
    .end local v14    # "index":I
    .end local v18    # "row":I
    .end local v19    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 398
    .end local v16    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_d
    :goto_6
    return-void

    .line 318
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    if-eqz v22, :cond_13

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v16

    .line 321
    .restart local v16    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Cell;

    .line 322
    .restart local v10    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v18

    .line 323
    .restart local v18    # "row":I
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v11

    .line 324
    .restart local v11    # "col":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getIndex(II)I

    move-result v14

    .line 325
    .restart local v14    # "index":I
    sget-object v23, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v19, v23, v14

    .line 326
    .restart local v19    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getDistance(II)I

    move-result v12

    .line 328
    .restart local v12    # "distance":I
    sget v23, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getProgressByDistance(I)F

    move-result v23

    add-float v23, v23, v17

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3fe8000000000000L    # 0.75

    div-double v8, v24, v26

    .line 333
    .restart local v8    # "angle":D
    :goto_8
    const-wide v24, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v23, v8, v24

    if-gez v23, :cond_11

    .line 334
    const-wide v8, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    .line 338
    :cond_f
    :goto_9
    const-wide/high16 v24, 0x402e000000000000L    # 15.0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v20, v0

    .line 339
    .restart local v20    # "x":F
    const-wide/high16 v24, -0x3fd2000000000000L    # -15.0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    .line 340
    .restart local v21    # "z":F
    neg-double v0, v8

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v23, v0

    new-instance v24, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 341
    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v23, v0

    add-float v23, v23, v20

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v25, v0

    add-float v25, v25, v21

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto/16 :goto_7

    .line 331
    .end local v8    # "angle":D
    .end local v20    # "x":F
    .end local v21    # "z":F
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getProgressByDistance(I)F

    move-result v23

    add-float v23, v23, v17

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3fe8000000000000L    # 0.75

    div-double v8, v24, v26

    .restart local v8    # "angle":D
    goto/16 :goto_8

    .line 335
    :cond_11
    const-wide/16 v24, 0x0

    cmpl-double v23, v8, v24

    if-lez v23, :cond_f

    .line 336
    const-wide/16 v8, 0x0

    goto/16 :goto_9

    .line 343
    .end local v8    # "angle":D
    .end local v10    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "col":I
    .end local v12    # "distance":I
    .end local v14    # "index":I
    .end local v18    # "row":I
    .end local v19    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 346
    .end local v16    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1b

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v16

    .line 349
    .restart local v16    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Cell;

    .line 350
    .restart local v10    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v18

    .line 351
    .restart local v18    # "row":I
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v11

    .line 352
    .restart local v11    # "col":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getIndex(II)I

    move-result v14

    .line 353
    .restart local v14    # "index":I
    sget-object v22, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v19, v22, v14

    .line 354
    .restart local v19    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getDistance(II)I

    move-result v12

    .line 356
    .restart local v12    # "distance":I
    sget v22, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 357
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getProgressByDistance(I)F

    move-result v22

    add-float v22, v22, v17

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3fe8000000000000L    # 0.75

    div-double v8, v24, v26

    .line 361
    .restart local v8    # "angle":D
    :goto_b
    const-wide v24, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v22, v8, v24

    if-gez v22, :cond_17

    .line 362
    const-wide v8, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    .line 366
    :cond_14
    :goto_c
    const-wide/high16 v24, -0x3fd2000000000000L    # -15.0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v20, v0

    .line 367
    .restart local v20    # "x":F
    const-wide/high16 v24, 0x402e000000000000L    # 15.0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    .line 368
    .restart local v21    # "z":F
    neg-double v0, v8

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v22, v0

    new-instance v24, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 369
    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v22, v0

    add-float v22, v22, v20

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v25, v0

    add-float v25, v25, v21

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 371
    neg-double v0, v8

    move-wide/from16 v24, v0

    const-wide v26, 0x4056800000000000L    # 90.0

    mul-double v24, v24, v26

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v7, v0

    .line 372
    .restart local v7    # "animIndex":I
    const/16 v22, 0x5a

    move/from16 v0, v22

    if-lt v7, v0, :cond_15

    const/4 v7, 0x0

    .line 373
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setDrawAnimIndex(II)V

    .line 374
    int-to-float v0, v7

    move/from16 v22, v0

    const/high16 v24, 0x42340000    # 45.0f

    sub-float v22, v22, v24

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const/high16 v24, 0x42340000    # 45.0f

    div-float v6, v22, v24

    .line 375
    .restart local v6    # "alpha":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageScrollShadow:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v27, v27, v6

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v27, v27, v28

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotateIcon;->setColor(FFFF)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v15

    .line 377
    .restart local v15    # "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3f847ae140000000L    # 0.009999999776482582

    cmpl-double v22, v24, v26

    if-lez v22, :cond_19

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    add-double v24, v24, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v22, v24, v26

    if-lez v22, :cond_19

    .line 378
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 379
    neg-double v0, v8

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v22, v0

    new-instance v24, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 380
    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mPageY:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const/high16 v25, -0x3e900000    # -15.0f

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v15, v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 381
    sget-boolean v22, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v22, :cond_18

    .line 382
    const-string v22, "t_blur_background"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 359
    .end local v6    # "alpha":F
    .end local v7    # "animIndex":I
    .end local v8    # "angle":D
    .end local v15    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v20    # "x":F
    .end local v21    # "z":F
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->getProgressByDistance(I)F

    move-result v22

    add-float v22, v22, v17

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3fe8000000000000L    # 0.75

    div-double v8, v24, v26

    .restart local v8    # "angle":D
    goto/16 :goto_b

    .line 363
    :cond_17
    const-wide/16 v24, 0x0

    cmpl-double v22, v8, v24

    if-lez v22, :cond_14

    .line 364
    const-wide/16 v8, 0x0

    goto/16 :goto_c

    .line 384
    .restart local v6    # "alpha":F
    .restart local v7    # "animIndex":I
    .restart local v15    # "node":Lcom/smartisanos/smengine/SceneNode;
    .restart local v20    # "x":F
    .restart local v21    # "z":F
    :cond_18
    move/from16 v0, v18

    invoke-static {v0, v11}, Lcom/smartisanos/launcher/view/Page;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v13

    .line 385
    .restart local v13    # "imageName":Ljava/lang/String;
    invoke-virtual {v15, v13}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 388
    .end local v13    # "imageName":Ljava/lang/String;
    :cond_19
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto/16 :goto_a

    .line 391
    .end local v6    # "alpha":F
    .end local v7    # "animIndex":I
    .end local v8    # "angle":D
    .end local v10    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "col":I
    .end local v12    # "distance":I
    .end local v14    # "index":I
    .end local v15    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v18    # "row":I
    .end local v19    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "x":F
    .end local v21    # "z":F
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mAssistNode:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 394
    .end local v16    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto/16 :goto_6
.end method
