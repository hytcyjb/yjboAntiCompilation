.class public Lcom/artitk/licensefragment/b/c;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artitk/licensefragment/b/c$1;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/artitk/licensefragment/b/c;->a:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private b(Lcom/artitk/licensefragment/model/LicenseType;)I
    .locals 2
    .parameter

    .prologue
    .line 48
    sget-object v0, Lcom/artitk/licensefragment/b/c$1;->a:[I

    invoke-virtual {p1}, Lcom/artitk/licensefragment/model/LicenseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :pswitch_0
    sget v0, Lcom/artitk/licensefragment/a$d;->apache_license_v20:I

    .line 54
    :goto_0
    return v0

    .line 50
    :pswitch_1
    sget v0, Lcom/artitk/licensefragment/a$d;->bsd_3_clause:I

    goto :goto_0

    .line 51
    :pswitch_2
    sget v0, Lcom/artitk/licensefragment/a$d;->bsd_2_clause:I

    goto :goto_0

    .line 52
    :pswitch_3
    sget v0, Lcom/artitk/licensefragment/a$d;->gpl_30:I

    goto :goto_0

    .line 53
    :pswitch_4
    sget v0, Lcom/artitk/licensefragment/a$d;->mit_license:I

    goto :goto_0

    .line 54
    :pswitch_5
    sget v0, Lcom/artitk/licensefragment/a$d;->epl_v10:I

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/artitk/licensefragment/b/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 34
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 35
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 36
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 41
    const-string v0, ""

    goto :goto_1
.end method

.method public a(Lcom/artitk/licensefragment/model/LicenseType;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/artitk/licensefragment/b/c;->b(Lcom/artitk/licensefragment/model/LicenseType;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/artitk/licensefragment/b/c;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
