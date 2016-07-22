.class public Lcom/artitk/licensefragment/model/b;
.super Ljava/lang/Object;
.source "License.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artitk/licensefragment/model/b$1;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/artitk/licensefragment/model/LicenseType;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/artitk/licensefragment/model/b;->a:Landroid/content/Context;

    .line 22
    sparse-switch p2, :sswitch_data_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 24
    :sswitch_0
    const-string v0, "License Fragment"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/artitk/licensefragment/model/LicenseType;->APACHE_LICENSE_20:Lcom/artitk/licensefragment/model/LicenseType;

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->d:Lcom/artitk/licensefragment/model/LicenseType;

    const-string v0, "2015"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->e:Ljava/lang/String;

    const-string v0, "Artit Kiuwilai"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->f:Ljava/lang/String;

    .line 37
    :goto_0
    return-void

    .line 26
    :sswitch_1
    const-string v0, "Gson"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/artitk/licensefragment/model/LicenseType;->APACHE_LICENSE_20:Lcom/artitk/licensefragment/model/LicenseType;

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->d:Lcom/artitk/licensefragment/model/LicenseType;

    const-string v0, "2008"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->e:Ljava/lang/String;

    const-string v0, "Google Inc."

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->f:Ljava/lang/String;

    goto :goto_0

    .line 28
    :sswitch_2
    const-string v0, "Otto"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/artitk/licensefragment/model/LicenseType;->APACHE_LICENSE_20:Lcom/artitk/licensefragment/model/LicenseType;

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->d:Lcom/artitk/licensefragment/model/LicenseType;

    const-string v0, "2013"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->e:Ljava/lang/String;

    const-string v0, "Square, Inc."

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->f:Ljava/lang/String;

    goto :goto_0

    .line 29
    :sswitch_3
    const-string v0, "OkHttp"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/artitk/licensefragment/model/LicenseType;->APACHE_LICENSE_20:Lcom/artitk/licensefragment/model/LicenseType;

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->d:Lcom/artitk/licensefragment/model/LicenseType;

    const-string v0, "2014"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->e:Ljava/lang/String;

    const-string v0, "Square, Inc."

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->f:Ljava/lang/String;

    goto :goto_0

    .line 30
    :sswitch_4
    const-string v0, "Retrofit"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/artitk/licensefragment/model/LicenseType;->APACHE_LICENSE_20:Lcom/artitk/licensefragment/model/LicenseType;

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->d:Lcom/artitk/licensefragment/model/LicenseType;

    const-string v0, "2013"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->e:Ljava/lang/String;

    const-string v0, "Square, Inc."

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->f:Ljava/lang/String;

    goto :goto_0

    .line 31
    :sswitch_5
    const-string v0, "Picasso"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/artitk/licensefragment/model/LicenseType;->APACHE_LICENSE_20:Lcom/artitk/licensefragment/model/LicenseType;

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->d:Lcom/artitk/licensefragment/model/LicenseType;

    const-string v0, "2013"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->e:Ljava/lang/String;

    const-string v0, "Square, Inc."

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->f:Ljava/lang/String;

    goto :goto_0

    .line 33
    :sswitch_6
    const-string v0, "StatedFragment"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/artitk/licensefragment/model/LicenseType;->APACHE_LICENSE_20:Lcom/artitk/licensefragment/model/LicenseType;

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->d:Lcom/artitk/licensefragment/model/LicenseType;

    const-string v0, "2015"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->e:Ljava/lang/String;

    const-string v0, "Sittiphol Phanvilai"

    iput-object v0, p0, Lcom/artitk/licensefragment/model/b;->f:Ljava/lang/String;

    goto :goto_0

    .line 22
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x80000 -> :sswitch_5
        0x1000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    sget-object v3, Lcom/artitk/licensefragment/model/LicenseType;->CUSTOM_LICENSE:Lcom/artitk/licensefragment/model/LicenseType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/artitk/licensefragment/model/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/artitk/licensefragment/model/LicenseType;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput p3, p0, Lcom/artitk/licensefragment/model/b;->c:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/artitk/licensefragment/model/LicenseType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/artitk/licensefragment/model/b;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/artitk/licensefragment/model/b;->b:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/artitk/licensefragment/model/b;->d:Lcom/artitk/licensefragment/model/LicenseType;

    .line 52
    iput-object p4, p0, Lcom/artitk/licensefragment/model/b;->e:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/artitk/licensefragment/model/b;->f:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/artitk/licensefragment/model/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    sget-object v0, Lcom/artitk/licensefragment/model/b$1;->a:[I

    iget-object v1, p0, Lcom/artitk/licensefragment/model/b;->d:Lcom/artitk/licensefragment/model/LicenseType;

    invoke-virtual {v1}, Lcom/artitk/licensefragment/model/LicenseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v0, Lcom/artitk/licensefragment/b/c;

    iget-object v1, p0, Lcom/artitk/licensefragment/model/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/artitk/licensefragment/b/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/artitk/licensefragment/model/b;->d:Lcom/artitk/licensefragment/model/LicenseType;

    invoke-virtual {v0, v1}, Lcom/artitk/licensefragment/b/c;->a(Lcom/artitk/licensefragment/model/LicenseType;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/artitk/licensefragment/model/b;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/artitk/licensefragment/model/b;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    new-instance v0, Lcom/artitk/licensefragment/b/c;

    iget-object v1, p0, Lcom/artitk/licensefragment/model/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/artitk/licensefragment/b/c;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/artitk/licensefragment/model/b;->c:I

    invoke-virtual {v0, v1}, Lcom/artitk/licensefragment/b/c;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/artitk/licensefragment/model/b;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/artitk/licensefragment/model/b;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/artitk/licensefragment/model/b;->b:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
