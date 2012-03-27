.class public Lcom/miui/backup/AppInitializer;
.super Ljava/lang/Object;
.source "AppInitializer.java"


# static fields
.field private static initialized:Z

.field private static instance:Lcom/miui/backup/AppInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/backup/AppInitializer;->instance:Lcom/miui/backup/AppInitializer;

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/backup/AppInitializer;->initialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/miui/backup/AppInitializer;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/miui/backup/AppInitializer;->instance:Lcom/miui/backup/AppInitializer;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/miui/backup/AppInitializer;

    invoke-direct {v0}, Lcom/miui/backup/AppInitializer;-><init>()V

    sput-object v0, Lcom/miui/backup/AppInitializer;->instance:Lcom/miui/backup/AppInitializer;

    .line 24
    :cond_0
    sget-object v0, Lcom/miui/backup/AppInitializer;->instance:Lcom/miui/backup/AppInitializer;

    return-object v0
.end method

.method private migrate(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .parameter "srcDir"
    .parameter "targetDir"

    .prologue
    const/4 v7, 0x1

    .line 86
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 87
    .local v4, oldContents:[Ljava/io/File;
    const/4 v5, 0x0

    .line 88
    .local v5, oldSize:I
    if-eqz v4, :cond_0

    .line 89
    array-length v5, v4

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 92
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 93
    const-string v8, "AppInitializer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "srcdirs : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    array-length v8, v1

    new-array v0, v8, [Ljava/lang/String;

    .line 95
    .local v0, cmd:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v1

    if-ge v3, v8, :cond_1

    .line 96
    aget-object v2, v1, v3

    .line 97
    .local v2, file:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mv -f "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v2           #file:Ljava/io/File;
    :cond_1
    invoke-static {v0}, Lcom/miui/backup/SysUtils;->runExecSh([Ljava/lang/String;)Z

    .line 102
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 103
    .local v6, tarContents:[Ljava/io/File;
    if-eqz v6, :cond_3

    array-length v8, v6

    array-length v9, v1

    add-int/2addr v9, v5

    if-lt v8, v9, :cond_3

    .line 104
    const-string v8, "AppInitializer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tardirs : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v6           #tarContents:[Ljava/io/File;
    :cond_2
    :goto_1
    return v7

    .line 107
    .restart local v0       #cmd:[Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v6       #tarContents:[Ljava/io/File;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public init()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    sget-boolean v5, Lcom/miui/backup/AppInitializer;->initialized:Z

    if-eqz v5, :cond_0

    .line 34
    sget-boolean v3, Lcom/miui/backup/AppInitializer;->initialized:Z

    .line 82
    :goto_0
    return v3

    .line 36
    :cond_0
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 37
    const-string v4, "AppInitializer"

    const-string v5, "SDCard is unmounted!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_1
    sget-object v5, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 41
    sget-object v5, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 43
    :cond_2
    sget-object v5, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 44
    sget-object v5, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 46
    :cond_3
    sget-object v5, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 47
    sget-object v5, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 51
    :cond_4
    :try_start_0
    sget-object v5, Lcom/miui/backup/Customization;->APP_NO_MEDIA_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 52
    sget-object v5, Lcom/miui/backup/Customization;->APP_NO_MEDIA_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_5
    :goto_1
    sget-object v5, Lcom/miui/backup/Customization;->APP_MIGRATE_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    .line 59
    const/4 v2, 0x1

    .line 60
    .local v2, migSysData:Z
    const/4 v1, 0x1

    .line 62
    .local v1, migAppData:Z
    sget-object v5, Lcom/miui/backup/Customization;->OLD_BACKUP_SYS_DATA_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 63
    sget-object v5, Lcom/miui/backup/Customization;->OLD_BACKUP_SYS_DATA_DIR:Ljava/io/File;

    sget-object v6, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-direct {p0, v5, v6}, Lcom/miui/backup/AppInitializer;->migrate(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 65
    :cond_6
    sget-object v5, Lcom/miui/backup/Customization;->OLD_BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 66
    sget-object v5, Lcom/miui/backup/Customization;->OLD_BACKUP_BASE_DIR:Ljava/io/File;

    sget-object v6, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-direct {p0, v5, v6}, Lcom/miui/backup/AppInitializer;->migrate(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 69
    :cond_7
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 71
    :try_start_1
    sget-object v3, Lcom/miui/backup/Customization;->APP_MIGRATE_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v1           #migAppData:Z
    .end local v2           #migSysData:Z
    :cond_8
    :goto_2
    sput-boolean v4, Lcom/miui/backup/AppInitializer;->initialized:Z

    move v3, v4

    .line 82
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/io/IOException;
    const-string v5, "AppInitializer"

    const-string v6, "Error create .nomedia: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 72
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #migAppData:Z
    .restart local v2       #migSysData:Z
    :catch_1
    move-exception v0

    .line 73
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "AppInitializer"

    const-string v5, "Error create .migrate: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 76
    .end local v0           #e:Ljava/io/IOException;
    :cond_9
    sput-boolean v3, Lcom/miui/backup/AppInitializer;->initialized:Z

    goto/16 :goto_0
.end method
