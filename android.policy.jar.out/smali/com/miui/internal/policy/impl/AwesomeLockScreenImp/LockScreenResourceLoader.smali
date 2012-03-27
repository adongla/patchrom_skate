.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;
.super Ljava/lang/Object;
.source "LockScreenResourceLoader.java"

# interfaces
.implements Lmiui/app/screenelement/ResourceManager$ResourceLoader;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreenResourceLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .locals 7
    .parameter "src"

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResources;

    move-result-object v4

    invoke-virtual {v4, p1, v5}, Lmiui/content/res/ThemeResources;->getAwesomeLockscreenFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v2

    .line 27
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 29
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .local v3, padding:Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v4, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    invoke-direct {v4, v0, v3}, Lmiui/app/screenelement/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #padding:Landroid/graphics/Rect;
    :goto_0
    return-object v4

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "ResourceManager"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    :goto_1
    move-object v4, v5

    .line 42
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v4

    .line 36
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 38
    :goto_2
    throw v4

    .line 37
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #padding:Landroid/graphics/Rect;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #padding:Landroid/graphics/Rect;
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 11
    .parameter "src"

    .prologue
    const/4 v8, 0x0

    const/high16 v10, 0x1

    .line 73
    const/4 v9, 0x1

    new-array v6, v9, [I

    .line 74
    .local v6, size:[I
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResources;

    move-result-object v9

    invoke-virtual {v9, p1, v6}, Lmiui/content/res/ThemeResources;->getAwesomeLockscreenFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v3

    .line 75
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_2

    .line 76
    const/high16 v0, 0x1

    .line 77
    .local v0, COUNT:I
    new-array v1, v10, [B

    .line 79
    .local v1, buff:[B
    :try_start_0
    new-instance v4, Landroid/os/MemoryFile;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-direct {v4, v9, v10}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v4, mf:Landroid/os/MemoryFile;
    const/4 v5, -0x1

    .line 81
    .local v5, read:I
    const/4 v7, 0x0

    .line 82
    .local v7, start:I
    :goto_0
    const/4 v9, 0x0

    const/high16 v10, 0x1

    invoke-virtual {v3, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_0

    .line 83
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9, v7, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 84
    add-int/2addr v7, v5

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v4}, Landroid/os/MemoryFile;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v9

    if-lez v9, :cond_1

    .line 94
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 100
    .end local v0           #COUNT:I
    .end local v1           #buff:[B
    .end local v4           #mf:Landroid/os/MemoryFile;
    .end local v5           #read:I
    .end local v7           #start:I
    :goto_1
    return-object v4

    .line 94
    .restart local v0       #COUNT:I
    .restart local v1       #buff:[B
    .restart local v4       #mf:Landroid/os/MemoryFile;
    .restart local v5       #read:I
    .restart local v7       #start:I
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .end local v0           #COUNT:I
    .end local v1           #buff:[B
    .end local v4           #mf:Landroid/os/MemoryFile;
    .end local v5           #read:I
    .end local v7           #start:I
    :cond_2
    :goto_2
    move-object v4, v8

    .line 100
    goto :goto_1

    .line 88
    .restart local v0       #COUNT:I
    .restart local v1       #buff:[B
    :catch_0
    move-exception v2

    .line 89
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v9, "ResourceManager"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 95
    :catch_1
    move-exception v9

    goto :goto_2

    .line 90
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v2

    .line 91
    .local v2, e:Ljava/io/IOException;
    :try_start_5
    const-string v9, "ResourceManager"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 95
    :catch_3
    move-exception v9

    goto :goto_2

    .line 93
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 94
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 96
    :goto_3
    throw v8

    .line 95
    .restart local v4       #mf:Landroid/os/MemoryFile;
    .restart local v5       #read:I
    .restart local v7       #start:I
    :catch_4
    move-exception v8

    goto :goto_1

    :catch_5
    move-exception v9

    goto :goto_2

    .end local v4           #mf:Landroid/os/MemoryFile;
    .end local v5           #read:I
    .end local v7           #start:I
    :catch_6
    move-exception v9

    goto :goto_3
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 50
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 51
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResources;

    move-result-object v7

    const-string v8, "manifest.xml"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lmiui/content/res/ThemeResources;->getAwesomeLockscreenFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v4

    .line 52
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 53
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 54
    .local v5, root:Lorg/w3c/dom/Element;
    const-string v7, "LockScreenResourceLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "root:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Lockscreen"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v7

    if-eqz v7, :cond_0

    .line 68
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #root:Lorg/w3c/dom/Element;
    :goto_0
    return-object v5

    .line 58
    :catch_0
    move-exception v3

    .line 59
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    :goto_1
    move-object v5, v6

    .line 68
    goto :goto_0

    .line 60
    :catch_1
    move-exception v3

    .line 61
    .local v3, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 62
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 63
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 65
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
