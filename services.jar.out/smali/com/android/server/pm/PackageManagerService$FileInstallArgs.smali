.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field codeFileName:Ljava/lang/String;

.field created:Z

.field installDir:Ljava/io/File;

.field libraryPath:Ljava/lang/String;

.field resourceFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "packageURI"
    .parameter "pkgName"
    .parameter "dataDir"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 5771
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v0, p0

    move-object v1, p2

    move-object v4, v2

    move-object v5, v2

    .line 5772
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 5755
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 5773
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 5774
    const-string v0, ".apk"

    #calls: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->access$2700(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5775
    .local v6, apkName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 5776
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 5777
    new-instance v0, Ljava/io/File;

    const-string v1, "lib"

    invoke-direct {v0, p4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 5778
    return-void

    .line 5773
    .end local v6           #apkName:Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 6
    .parameter
    .parameter "params"

    .prologue
    .line 5757
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5758
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->manifestDigest:Landroid/content/pm/ManifestDigest;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 5755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 5760
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 5762
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    .line 5763
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 5755
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 5764
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5765
    .local v6, codeFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 5766
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 5767
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 5768
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    .line 5769
    return-void
.end method

.method private cleanUp()Z
    .locals 8

    .prologue
    .line 5916
    const/4 v2, 0x1

    .line 5917
    .local v2, ret:Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    .line 5918
    .local v3, sourceDir:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    .line 5919
    .local v0, publicSourceDir:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 5920
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5921
    .local v4, sourceFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5922
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package source "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5923
    const/4 v2, 0x0

    .line 5926
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 5928
    .end local v4           #sourceFile:Ljava/io/File;
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5929
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5930
    .local v1, publicSourceFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 5931
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package public source "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5933
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5934
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 5937
    .end local v1           #publicSourceFile:Ljava/io/File;
    :cond_3
    return v2
.end method

.method private isFwdLocked()Z
    .locals 1

    .prologue
    .line 5979
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPermissions()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 5955
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5956
    const/16 v0, 0x1a4

    .line 5959
    .local v0, filePermissions:I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v1

    .line 5960
    .local v1, retCode:I
    if-eqz v1, :cond_0

    .line 5961
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t set new package file permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The return code was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5965
    const/4 v2, 0x0

    .line 5969
    .end local v0           #filePermissions:I
    .end local v1           #retCode:I
    :cond_0
    return v2
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 8
    .parameter "imcs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 5783
    const-string v3, "devicestoragemonitor"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceStorageMonitorService;

    .line 5785
    .local v0, dsm:Lcom/android/server/DeviceStorageMonitorService;
    if-nez v0, :cond_0

    .line 5786
    const-string v3, "PackageManager"

    const-string v4, "Couldn\'t get low memory threshold; no free limit imposed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5787
    const-wide/16 v1, 0x0

    .line 5798
    .local v1, lowThreshold:J
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.android.defcontainer"

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 5800
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-interface {p1, v3, v1, v2}, Lcom/android/internal/app/IMediaContainerService;->checkInternalFreeStorage(Landroid/net/Uri;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 5802
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 5800
    .end local v1           #lowThreshold:J
    :goto_1
    return v3

    .line 5789
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->isMemoryLow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5790
    const-string v3, "PackageManager"

    const-string v4, "Memory is reported as being too low; aborting package install"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5791
    const/4 v3, 0x0

    goto :goto_1

    .line 5794
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->getMemoryLowThreshold()J

    move-result-wide v1

    .restart local v1       #lowThreshold:J
    goto :goto_0

    .line 5802
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v3
.end method

.method cleanUpResourcesLI()V
    .locals 5

    .prologue
    .line 5941
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 5942
    .local v1, sourceDir:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5943
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;)I

    move-result v0

    .line 5944
    .local v0, retCode:I
    if-gez v0, :cond_0

    .line 5945
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5951
    .end local v0           #retCode:I
    :cond_0
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 9
    .parameter "imcs"
    .parameter "temp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, -0x4

    .line 5818
    if-eqz p2, :cond_0

    .line 5820
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->createCopyFile()V

    .line 5823
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5824
    .local v0, codeFile:Ljava/io/File;
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    if-nez v4, :cond_1

    .line 5826
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 5828
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->setPermissions()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 5855
    :goto_0
    return v3

    .line 5832
    :catch_0
    move-exception v1

    .line 5833
    .local v1, e:Ljava/io/IOException;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5837
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    .line 5839
    .local v2, out:Landroid/os/ParcelFileDescriptor;
    const/high16 v4, 0x3000

    :try_start_1
    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 5845
    const/4 v3, -0x4

    .line 5847
    .local v3, ret:I
    :try_start_2
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.android.defcontainer"

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 5849
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-interface {p1, v4, v2}, Lcom/android/internal/app/IMediaContainerService;->copyResource(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 5851
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5852
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 5840
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 5841
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create file descriptor for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5851
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #ret:I
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 5852
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 5851
    throw v4

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method createCopyFile()V
    .locals 2

    .prologue
    .line 5811
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    .line 5812
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    #calls: Lcom/android/server/pm/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 5813
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 5814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->created:Z

    .line 5815
    return-void

    .line 5811
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    goto :goto_0
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .parameter "delete"

    .prologue
    .line 5974
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 5975
    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 5890
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 5891
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 5893
    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 5859
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 5860
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 5862
    :cond_0
    return p1
.end method

.method doRename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "status"
    .parameter "pkgName"
    .parameter "oldCodePath"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5866
    if-eq p1, v4, :cond_1

    .line 5867
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 5885
    :cond_0
    :goto_0
    return v3

    .line 5871
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5872
    .local v1, codeFile:Ljava/io/File;
    const-string v5, ".apk"

    #calls: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2, v5}, Lcom/android/server/pm/PackageManagerService;->access$2700(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5873
    .local v0, apkName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5874
    .local v2, desFile:Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5878
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    .line 5879
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getResourcePathFromCodePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    .line 5881
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->setPermissions()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 5885
    goto :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5807
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFileName:Ljava/lang/String;

    return-object v0
.end method

.method getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5912
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->libraryPath:Ljava/lang/String;

    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5897
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFileName:Ljava/lang/String;

    return-object v0
.end method

.method getResourcePathFromCodePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5901
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 5902
    .local v1, codePath:Ljava/lang/String;
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5903
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5904
    .local v0, apkNameOnly:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5906
    .end local v0           #apkNameOnly:Ljava/lang/String;
    .end local v1           #codePath:Ljava/lang/String;
    :cond_0
    return-object v1
.end method
