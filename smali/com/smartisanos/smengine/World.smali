.class public Lcom/smartisanos/smengine/World;
.super Ljava/lang/Object;
.source "World.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/World$InitListener;,
        Lcom/smartisanos/smengine/World$FrameListener;
    }
.end annotation


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static mSeqence:J

.field private static mSeqenceLock:Ljava/lang/Object;

.field private static mWorld:Lcom/smartisanos/smengine/World;


# instance fields
.field private mAndroidContext:Landroid/content/Context;

.field private mAnimManager:Lcom/smartisanos/smengine/AnimationManager;

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mCameraManager:Lcom/smartisanos/smengine/CameraManager;

.field private mCanDraw:Z

.field private mCollisionManager:Lcom/smartisanos/smengine/CollisionManager;

.field private volatile mEnableRender:Z

.field private mEventManager:Lcom/smartisanos/smengine/EventManager;

.field private mFrameListener:Lcom/smartisanos/smengine/World$FrameListener;

.field private mGLView:Landroid/opengl/GLSurfaceView;

.field private mInitListener:Lcom/smartisanos/smengine/World$InitListener;

.field private mInputManager:Lcom/smartisanos/smengine/InputManager;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mMeshManage:Lcom/smartisanos/smengine/MeshManager;

.field private mParticleManager:Lcom/smartisanos/smengine/myparticle/ParticleManager;

.field private mRenderManager:Lcom/smartisanos/smengine/RenderManager;

.field private mRenderTargetManger:Lcom/smartisanos/smengine/RenderTargetManager;

.field private mSceneManger:Lcom/smartisanos/smengine/SceneManager;

.field private mShaderManager:Lcom/smartisanos/smengine/ShaderManager;

.field private mTextureManager:Lcom/smartisanos/smengine/TextureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-class v0, Lcom/smartisanos/smengine/World;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/World;->log:Lcom/smartisanos/launcher/LOG;

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/smartisanos/smengine/World;->mSeqence:J

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/World;->mSeqenceLock:Ljava/lang/Object;

    .line 45
    const-string v0, "launcher_opt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/smartisanos/smengine/TextureManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/TextureManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mTextureManager:Lcom/smartisanos/smengine/TextureManager;

    .line 21
    new-instance v0, Lcom/smartisanos/smengine/RenderTargetManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/RenderTargetManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mRenderTargetManger:Lcom/smartisanos/smengine/RenderTargetManager;

    .line 22
    new-instance v0, Lcom/smartisanos/smengine/CameraManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/CameraManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mCameraManager:Lcom/smartisanos/smengine/CameraManager;

    .line 23
    new-instance v0, Lcom/smartisanos/smengine/RenderManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/RenderManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mRenderManager:Lcom/smartisanos/smengine/RenderManager;

    .line 24
    new-instance v0, Lcom/smartisanos/smengine/AnimationManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/AnimationManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mAnimManager:Lcom/smartisanos/smengine/AnimationManager;

    .line 25
    new-instance v0, Lcom/smartisanos/smengine/SceneManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/SceneManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mSceneManger:Lcom/smartisanos/smengine/SceneManager;

    .line 26
    new-instance v0, Lcom/smartisanos/smengine/ShaderManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/ShaderManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mShaderManager:Lcom/smartisanos/smengine/ShaderManager;

    .line 27
    new-instance v0, Lcom/smartisanos/smengine/MeshManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/MeshManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mMeshManage:Lcom/smartisanos/smengine/MeshManager;

    .line 28
    new-instance v0, Lcom/smartisanos/smengine/InputManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/InputManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mInputManager:Lcom/smartisanos/smengine/InputManager;

    .line 29
    new-instance v0, Lcom/smartisanos/smengine/EventManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/EventManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mEventManager:Lcom/smartisanos/smengine/EventManager;

    .line 30
    new-instance v0, Lcom/smartisanos/smengine/CollisionManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/CollisionManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mCollisionManager:Lcom/smartisanos/smengine/CollisionManager;

    .line 31
    new-instance v0, Lcom/smartisanos/smengine/myparticle/ParticleManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/myparticle/ParticleManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/World;->mParticleManager:Lcom/smartisanos/smengine/myparticle/ParticleManager;

    .line 34
    iput-boolean v1, p0, Lcom/smartisanos/smengine/World;->mCanDraw:Z

    .line 35
    iput-boolean v1, p0, Lcom/smartisanos/smengine/World;->mEnableRender:Z

    .line 126
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/smengine/World;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/smartisanos/smengine/World;->mWorld:Lcom/smartisanos/smengine/World;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/smartisanos/smengine/World;

    invoke-direct {v0}, Lcom/smartisanos/smengine/World;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/World;->mWorld:Lcom/smartisanos/smengine/World;

    .line 131
    :cond_0
    sget-object v0, Lcom/smartisanos/smengine/World;->mWorld:Lcom/smartisanos/smengine/World;

    return-object v0
.end method

.method public static uid()J
    .locals 8

    .prologue
    .line 206
    const-wide/16 v0, 0x0

    .line 207
    .local v0, "ret":J
    sget-object v3, Lcom/smartisanos/smengine/World;->mSeqenceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 208
    :try_start_0
    sget-wide v0, Lcom/smartisanos/smengine/World;->mSeqence:J

    .line 209
    sget-wide v4, Lcom/smartisanos/smengine/World;->mSeqence:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    .line 210
    sget-wide v4, Lcom/smartisanos/smengine/World;->mSeqence:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lcom/smartisanos/smengine/World;->mSeqence:J

    .line 214
    :goto_0
    monitor-exit v3

    .line 215
    return-wide v0

    .line 212
    :cond_0
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/smartisanos/smengine/World;->mSeqence:J

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public canDraw()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/smartisanos/smengine/World;->mCanDraw:Z

    return v0
.end method

.method public cleanDataStructureAboutHardwareResource()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/World;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "#### cleanDataStructureAboutHardwareResource ####"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/TextureManager;->clearManager(Z)V

    .line 180
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getShaderManager()Lcom/smartisanos/smengine/ShaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/ShaderManager;->clearManager(Z)V

    .line 181
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneManager;->clearManager(Z)V

    .line 182
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getRenderManager()Lcom/smartisanos/smengine/RenderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderManager;->clearSceneNode()V

    .line 184
    return-void
.end method

.method public clearHardwareResource()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->clearManager(Z)V

    .line 187
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getShaderManager()Lcom/smartisanos/smengine/ShaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/ShaderManager;->clearManager(Z)V

    .line 188
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneManager;->clearManager(Z)V

    .line 189
    return-void
.end method

.method public getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mAnimManager:Lcom/smartisanos/smengine/AnimationManager;

    return-object v0
.end method

.method public getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getCameraManager()Lcom/smartisanos/smengine/CameraManager;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mCameraManager:Lcom/smartisanos/smengine/CameraManager;

    return-object v0
.end method

.method public getCollisionManager()Lcom/smartisanos/smengine/CollisionManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mCollisionManager:Lcom/smartisanos/smengine/CollisionManager;

    return-object v0
.end method

.method public getEventManager()Lcom/smartisanos/smengine/EventManager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mEventManager:Lcom/smartisanos/smengine/EventManager;

    return-object v0
.end method

.method public getInputManager()Lcom/smartisanos/smengine/InputManager;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mInputManager:Lcom/smartisanos/smengine/InputManager;

    return-object v0
.end method

.method public getMainThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMeshManager()Lcom/smartisanos/smengine/MeshManager;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mMeshManage:Lcom/smartisanos/smengine/MeshManager;

    return-object v0
.end method

.method public getParticleManager()Lcom/smartisanos/smengine/myparticle/ParticleManager;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mParticleManager:Lcom/smartisanos/smengine/myparticle/ParticleManager;

    return-object v0
.end method

.method public getRenderManager()Lcom/smartisanos/smengine/RenderManager;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mRenderManager:Lcom/smartisanos/smengine/RenderManager;

    return-object v0
.end method

.method public getRenderTargetManager()Lcom/smartisanos/smengine/RenderTargetManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mRenderTargetManger:Lcom/smartisanos/smengine/RenderTargetManager;

    return-object v0
.end method

.method public getSceneManager()Lcom/smartisanos/smengine/SceneManager;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mSceneManger:Lcom/smartisanos/smengine/SceneManager;

    return-object v0
.end method

.method public getShaderManager()Lcom/smartisanos/smengine/ShaderManager;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mShaderManager:Lcom/smartisanos/smengine/ShaderManager;

    return-object v0
.end method

.method public getTextureManager()Lcom/smartisanos/smengine/TextureManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mTextureManager:Lcom/smartisanos/smengine/TextureManager;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mInitListener:Lcom/smartisanos/smengine/World$InitListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mInitListener:Lcom/smartisanos/smengine/World$InitListener;

    invoke-interface {v0}, Lcom/smartisanos/smengine/World$InitListener;->init()V

    .line 199
    :cond_0
    return-void
.end method

.method public runOneFrame(F)V
    .locals 2
    .param p1, "deltaT"    # F

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/smartisanos/smengine/World;->mCanDraw:Z

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mFrameListener:Lcom/smartisanos/smengine/World$FrameListener;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mFrameListener:Lcom/smartisanos/smengine/World$FrameListener;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/World$FrameListener;->frameBeforeRender(F)V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mInputManager:Lcom/smartisanos/smengine/InputManager;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/InputManager;->update(F)V

    .line 158
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mEventManager:Lcom/smartisanos/smengine/EventManager;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/EventManager;->update(F)V

    .line 159
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mAnimManager:Lcom/smartisanos/smengine/AnimationManager;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/AnimationManager;->update(F)V

    .line 161
    iget-boolean v0, p0, Lcom/smartisanos/smengine/World;->mEnableRender:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mParticleManager:Lcom/smartisanos/smengine/myparticle/ParticleManager;

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/myparticle/ParticleManager;->updateAllParticleEmitter(F)V

    .line 166
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mSceneManger:Lcom/smartisanos/smengine/SceneManager;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneManager;->draw()V

    .line 170
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mRenderManager:Lcom/smartisanos/smengine/RenderManager;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RenderManager;->renderSceneNode(F)V

    .line 173
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mFrameListener:Lcom/smartisanos/smengine/World$FrameListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mFrameListener:Lcom/smartisanos/smengine/World$FrameListener;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/World$FrameListener;->frameAfterRender(F)V

    goto :goto_0
.end method

.method public setAndroidContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/smartisanos/smengine/World;->mAndroidContext:Landroid/content/Context;

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/World;->mMainThreadHandler:Landroid/os/Handler;

    .line 87
    iget-object v1, p0, Lcom/smartisanos/smengine/World;->mAndroidContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 88
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    iget-object v1, p0, Lcom/smartisanos/smengine/World;->mAndroidContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->isDefaultTheme(Landroid/content/Context;Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/smartisanos/smengine/World;->mAndroidContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/smengine/World;->mAssetManager:Landroid/content/res/AssetManager;

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/smengine/World;->mAssetManager:Landroid/content/res/AssetManager;

    goto :goto_0
.end method

.method public setAssetManager(Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "manager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/smartisanos/smengine/World;->mAssetManager:Landroid/content/res/AssetManager;

    .line 78
    return-void
.end method

.method public setCanDraw(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/smartisanos/smengine/World;->mCanDraw:Z

    .line 135
    return-void
.end method

.method public setEnableRender(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/smartisanos/smengine/World;->mEnableRender:Z

    .line 142
    return-void
.end method

.method public setFrameListener(Lcom/smartisanos/smengine/World$FrameListener;)V
    .locals 0
    .param p1, "fl"    # Lcom/smartisanos/smengine/World$FrameListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/smartisanos/smengine/World;->mFrameListener:Lcom/smartisanos/smengine/World$FrameListener;

    .line 146
    return-void
.end method

.method public setGLView(Landroid/opengl/GLSurfaceView;)V
    .locals 0
    .param p1, "v"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/smartisanos/smengine/World;->mGLView:Landroid/opengl/GLSurfaceView;

    .line 53
    return-void
.end method

.method public updateGLView()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mGLView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/smartisanos/smengine/World;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 194
    :cond_0
    return-void
.end method
