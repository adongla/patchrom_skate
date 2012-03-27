.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;
.super Lmiui/app/screenelement/ImageScreenElement;
.source "WallpaperScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Wallpaper"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 2
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 18
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 20
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getMaxHeight()F
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/AnimatedElement;->getMaxHeight()F

    move-result v0

    .line 50
    .local v0, max:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->descale(F)F

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->getHeight()F

    move-result v1

    goto :goto_0
.end method

.method public getMaxWidth()F
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v1}, Lmiui/app/screenelement/AnimatedElement;->getMaxWidth()F

    move-result v0

    .line 44
    .local v0, max:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->descale(F)F

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->getWidth()F

    move-result v1

    goto :goto_0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method protected shouldScaleBitmap()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
