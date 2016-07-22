.class public final Lcom/davemorrissey/labs/subscaleview/a;
.super Ljava/lang/Object;
.source "ImageSource.java"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ljava/lang/Integer;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Z


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->b:Landroid/graphics/Bitmap;

    .line 63
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->a:Landroid/net/Uri;

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->c:Ljava/lang/Integer;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->d:Z

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/io/File;

    const-string v2, "file:///"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 55
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/davemorrissey/labs/subscaleview/a;->b:Landroid/graphics/Bitmap;

    .line 56
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/a;->a:Landroid/net/Uri;

    .line 57
    iput-object v3, p0, Lcom/davemorrissey/labs/subscaleview/a;->c:Ljava/lang/Integer;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->d:Z

    .line 59
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(I)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 1
    .parameter

    .prologue
    .line 73
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/a;

    invoke-direct {v0, p0}, Lcom/davemorrissey/labs/subscaleview/a;-><init>(I)V

    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 2
    .parameter

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/a;

    invoke-direct {v0, p0}, Lcom/davemorrissey/labs/subscaleview/a;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 2
    .parameter

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Asset name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/a;->b(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 2
    .parameter

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    :cond_2
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/a;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/a;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/davemorrissey/labs/subscaleview/a;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/a;->a(Z)Lcom/davemorrissey/labs/subscaleview/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/a;->d:Z

    .line 165
    return-object p0
.end method

.method protected final b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->a:Landroid/net/Uri;

    return-object v0
.end method

.method protected final c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected final d()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method protected final e()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->d:Z

    return v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->e:I

    return v0
.end method

.method protected final g()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->f:I

    return v0
.end method

.method protected final h()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->h:Z

    return v0
.end method
