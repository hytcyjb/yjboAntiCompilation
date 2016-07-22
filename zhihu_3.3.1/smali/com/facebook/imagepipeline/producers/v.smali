.class public Lcom/facebook/imagepipeline/producers/v;
.super Lcom/facebook/imagepipeline/producers/x;
.source "LocalContentUriFetchProducer.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:Landroid/graphics/Rect;

.field private static final f:Landroid/graphics/Rect;


# instance fields
.field private final g:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x60

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    const-class v0, Lcom/facebook/imagepipeline/producers/v;

    sput-object v0, Lcom/facebook/imagepipeline/producers/v;->a:Ljava/lang/Class;

    .line 44
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "display_photo"

    .line 45
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/producers/v;->b:Ljava/lang/String;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/imagepipeline/producers/v;->c:[Ljava/lang/String;

    .line 50
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/imagepipeline/producers/v;->d:[Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/v;->e:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/v;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Landroid/content/ContentResolver;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p4}, Lcom/facebook/imagepipeline/producers/x;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Z)V

    .line 68
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/v;->g:Landroid/content/ContentResolver;

    .line 69
    return-void
.end method

.method private static a(Lcom/facebook/imagepipeline/common/c;)I
    .locals 1
    .parameter

    .prologue
    .line 188
    sget-object v0, Lcom/facebook/imagepipeline/producers/v;->f:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/producers/v;->a(Lcom/facebook/imagepipeline/common/c;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x3

    .line 193
    :goto_0
    return v0

    .line 190
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/producers/v;->e:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/facebook/imagepipeline/producers/v;->a(Lcom/facebook/imagepipeline/common/c;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 205
    if-nez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/f/e;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/v;->g:Landroid/content/ContentResolver;

    sget-object v2, Lcom/facebook/imagepipeline/producers/v;->c:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 122
    if-nez v1, :cond_0

    .line 146
    :goto_0
    return-object v3

    .line 126
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 129
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 130
    const-string v0, "_data"

    .line 131
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    if-eqz p2, :cond_2

    .line 133
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 134
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/producers/v;->a(Lcom/facebook/imagepipeline/common/c;I)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_2

    .line 136
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/v;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/f/e;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v0

    goto :goto_0

    .line 140
    :cond_2
    if-eqz v2, :cond_3

    .line 141
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/v;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/facebook/imagepipeline/producers/v;->b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/f/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Lcom/facebook/imagepipeline/common/c;I)Lcom/facebook/imagepipeline/f/e;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/v;->a(Lcom/facebook/imagepipeline/common/c;)I

    move-result v1

    .line 154
    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/v;->g:Landroid/content/ContentResolver;

    int-to-long v4, p2

    sget-object v3, Lcom/facebook/imagepipeline/producers/v;->d:[Ljava/lang/String;

    invoke-static {v2, v4, v5, v1, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 164
    if-nez v1, :cond_2

    .line 176
    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 167
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 168
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 169
    const-string v2, "_data"

    .line 170
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 169
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/v;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/facebook/imagepipeline/producers/v;->b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/f/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 176
    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 176
    :cond_3
    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_4

    .line 177
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 176
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 108
    const-string v0, "com.android.contacts"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/imagepipeline/producers/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/facebook/imagepipeline/common/c;Landroid/graphics/Rect;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x3faaaaab

    .line 198
    iget v0, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    int-to-float v0, v0

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/common/c;->b:I

    int-to-float v0, v0

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 214
    if-eqz p0, :cond_0

    .line 216
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 217
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/c/b;->a(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    sget-object v2, Lcom/facebook/imagepipeline/producers/v;->a:Ljava/lang/Class;

    const-string v3, "Unable to retrieve thumbnail rotation for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/common/d/a;->c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static b(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 115
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/f/e;
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 73
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/v;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/v;->g:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 85
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/facebook/imagepipeline/producers/v;->b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    .line 97
    :cond_1
    :goto_0
    return-object v0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/v;->g:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact photo does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_3
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/v;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()Lcom/facebook/imagepipeline/common/c;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/imagepipeline/producers/v;->a(Landroid/net/Uri;Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    .line 92
    if-nez v0, :cond_1

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/v;->g:Landroid/content/ContentResolver;

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0, v3}, Lcom/facebook/imagepipeline/producers/v;->b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "LocalContentUriFetchProducer"

    return-object v0
.end method
