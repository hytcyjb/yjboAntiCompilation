.class public Lcom/artitk/licensefragment/model/LicenseManager;
.super Ljava/lang/Object;
.source "LicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artitk/licensefragment/model/LicenseManager$1;,
        Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/artitk/licensefragment/model/LicenseManager;->a:Landroid/content/Context;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/artitk/licensefragment/model/LicenseManager;->b:Z

    .line 19
    return-void
.end method

.method private a(I)Lcom/artitk/licensefragment/model/b;
    .locals 2
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/artitk/licensefragment/model/b;

    iget-object v1, p0, Lcom/artitk/licensefragment/model/LicenseManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/artitk/licensefragment/model/b;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/artitk/licensefragment/model/LicenseManager;I)Lcom/artitk/licensefragment/model/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/artitk/licensefragment/model/LicenseManager;->a(I)Lcom/artitk/licensefragment/model/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/artitk/licensefragment/model/LicenseManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/artitk/licensefragment/model/LicenseManager;->b:Z

    return v0
.end method

.method private b(I)[I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 43
    new-array v0, v2, [I

    :goto_0
    return-object v0

    .line 40
    :sswitch_0
    new-array v0, v0, [I

    const/high16 v1, 0x2

    aput v1, v0, v2

    goto :goto_0

    .line 41
    :sswitch_1
    new-array v0, v0, [I

    const/high16 v1, 0x1

    aput v1, v0, v2

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x1000000 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic b(Lcom/artitk/licensefragment/model/LicenseManager;I)[I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/artitk/licensefragment/model/LicenseManager;->b(I)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/artitk/licensefragment/model/LicenseManager;
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/artitk/licensefragment/model/LicenseManager;->b:Z

    .line 23
    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/artitk/licensefragment/model/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;-><init>(Lcom/artitk/licensefragment/model/LicenseManager;Lcom/artitk/licensefragment/model/LicenseManager$1;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->add(I)Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->add(Ljava/util/ArrayList;)Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
