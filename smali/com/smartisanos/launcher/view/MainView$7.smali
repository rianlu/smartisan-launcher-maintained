.class Lcom/smartisanos/launcher/view/MainView$7;
.super Lcom/smartisanos/smengine/Event;
.source "MainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->changeWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p2, "type"    # I

    .prologue
    .line 901
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->access$400(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v22

    if-nez v22, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v22

    sget-object v23, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaperByUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16
    
    .line 907
    .local v16, "ori":Landroid/graphics/Bitmap;
    sget-object v22, Lcom/smartisanos/launcher/data/Constants;->sGaussianResSuffix:Ljava/lang/String;

    const-string v23, "_light"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

    const/4 v15, 0x1

    .line 908
    .local v15, "nowDark":Z
    :goto_1
    move v11, v15

    .line 909
    .local v11, "isDarkImage":Z
    if-eqz v16, :cond_2

    .line 910
    invoke-static/range {v16 .. v16}, Lcom/smartisanos/launcher/data/Utils;->isDarkImage(Landroid/graphics/Bitmap;)Z

    move-result v11

    .line 913
    :cond_2
    if-eq v11, v15, :cond_7

    const/4 v14, 0x1

    .line 914
    .local v14, "needChangeDarkLight":Z
    :goto_2
    if-eqz v14, :cond_3

    .line 915
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/data/Constants;->initByTheme(Landroid/content/Context;)V

    .line 916
    invoke-static {}, Lcom/smartisanos/launcher/view/TextView;->applyGaussianDarkLight()V

    .line 919
    :cond_3
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/Utils;->syncSystemWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v22

    if-eqz v22, :cond_sync_state_skip

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Utils;->updateWallpaperSyncState(Landroid/content/Context;)V

    :cond_sync_state_skip

    .line 920
    .local v4, "bmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v21

    .line 921
    .local v21, "tm":Lcom/smartisanos/smengine/TextureManager;
    const-string v22, "background.png"

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 922
    .local v19, "path":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 923
    new-instance v20, Lcom/smartisanos/smengine/Texture;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 924
    .local v20, "texture":Lcom/smartisanos/smengine/Texture;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 925
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 927
    const-string v22, "t_blur_anim_background"

    invoke-virtual/range {v21 .. v22}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v3

    .line 928
    .local v3, "blurBack":Lcom/smartisanos/smengine/Texture;
    if-eqz v3, :cond_8

    .line 929
    const-string v22, "t_blur_anim_background"

    invoke-virtual/range {v21 .. v22}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->access$500(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadGaussianAnimBackTexture(Landroid/graphics/Bitmap;)V

    .line 935
    :goto_3
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v5

    .line 936
    .local v5, "cm":Lcom/smartisanos/smengine/CameraManager;
    invoke-virtual {v5}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v6

    .line 937
    .local v6, "currentCamera":Lcom/smartisanos/smengine/Camera;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/World;->getRenderManager()Lcom/smartisanos/smengine/RenderManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/RenderManager;->isUsePostEffect()Z

    move-result v12

    .line 938
    .local v12, "isUsePostEffect":Z
    if-eqz v12, :cond_4

    .line 939
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/World;->getRenderManager()Lcom/smartisanos/smengine/RenderManager;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/smengine/RenderManager;->setUsePostEffect(Z)V

    .line 941
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->generateBackgroundGaussianTexture()Lcom/smartisanos/smengine/RectNode;

    move-result-object v9

    .line 943
    .local v9, "gaussianRect":Lcom/smartisanos/smengine/RectNode;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/RectNode;->setSceneNodeForceRender(Z)V

    .line 944
    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 945
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/RectNode;->setSceneNodeForceRender(Z)V

    .line 946
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 948
    const-string v22, "t_blur_background"

    invoke-virtual/range {v21 .. v22}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v8

    .line 949
    .local v8, "ga":Lcom/smartisanos/smengine/Texture;
    if-eqz v8, :cond_9

    .line 950
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "changeWallpaper TEXTURE_ID_BLUR_BACKGROUND texture id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Lcom/smartisanos/smengine/Texture;->getTexID()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;)V

    .line 954
    :goto_4
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->access$400(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/TexturePreColorMaterial;

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 956
    const-string v22, "TexturePreColorMaterial"

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v13

    .line 957
    .local v13, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->access$400(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v22

    const/16 v23, 0x0

    const-string v24, "background.png"

    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->access$400(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 960
    .end local v13    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/smartisanos/launcher/view/MainView;->access$400(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/launcher/view/MainView;->setBackgroundMaskColor(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 961
    if-eqz v14, :cond_b

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v18

    .line 963
    .local v18, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/smartisanos/launcher/view/Page;

    .line 964
    .local v17, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->applyGaussianDarkLight()V

    goto :goto_5

    .line 907
    .end local v3    # "blurBack":Lcom/smartisanos/smengine/Texture;
    .end local v4    # "bmap":Landroid/graphics/Bitmap;
    .end local v5    # "cm":Lcom/smartisanos/smengine/CameraManager;
    .end local v6    # "currentCamera":Lcom/smartisanos/smengine/Camera;
    .end local v8    # "ga":Lcom/smartisanos/smengine/Texture;
    .end local v9    # "gaussianRect":Lcom/smartisanos/smengine/RectNode;
    .end local v11    # "isDarkImage":Z
    .end local v12    # "isUsePostEffect":Z
    .end local v14    # "needChangeDarkLight":Z
    .end local v15    # "nowDark":Z
    .end local v17    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v18    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    .end local v21    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 913
    .restart local v11    # "isDarkImage":Z
    .restart local v15    # "nowDark":Z
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 932
    .restart local v3    # "blurBack":Lcom/smartisanos/smengine/Texture;
    .restart local v4    # "bmap":Landroid/graphics/Bitmap;
    .restart local v14    # "needChangeDarkLight":Z
    .restart local v19    # "path":Ljava/lang/String;
    .restart local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    .restart local v21    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 952
    .restart local v5    # "cm":Lcom/smartisanos/smengine/CameraManager;
    .restart local v6    # "currentCamera":Lcom/smartisanos/smengine/Camera;
    .restart local v8    # "ga":Lcom/smartisanos/smengine/Texture;
    .restart local v9    # "gaussianRect":Lcom/smartisanos/smengine/RectNode;
    .restart local v12    # "isUsePostEffect":Z
    :cond_9
    const-string v22, "changeWallpaper TEXTURE_ID_BLUR_BACKGROUND texture null"

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 966
    .restart local v18    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v7

    .line 967
    .local v7, "dock":Lcom/smartisanos/launcher/view/DockView;
    if-eqz v7, :cond_b

    .line 968
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/DockView;->applyGaussianDarkLight()V

    .line 974
    .end local v7    # "dock":Lcom/smartisanos/launcher/view/DockView;
    .end local v18    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/smartisanos/launcher/view/MainView$7$1;

    const/16 v24, 0x64

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v12}, Lcom/smartisanos/launcher/view/MainView$7$1;-><init>(Lcom/smartisanos/launcher/view/MainView$7;IZ)V

    invoke-static/range {v22 .. v23}, Lcom/smartisanos/launcher/view/MainView;->access$602(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/smengine/Event;)Lcom/smartisanos/smengine/Event;

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->access$600(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/smengine/Event;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView$7;->this$0:Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->access$600(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/smengine/Event;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 983
    if-eqz v14, :cond_0

    .line 984
    move v10, v11

    .line 985
    .local v10, "isDark":Z
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/home/Launcher;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    new-instance v23, Lcom/smartisanos/launcher/view/MainView$7$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/smartisanos/launcher/view/MainView$7$2;-><init>(Lcom/smartisanos/launcher/view/MainView$7;Z)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
