.class Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;
.super Ljava/util/LinkedHashMap;
.source "LicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artitk/licensefragment/model/LicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LicenseHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/artitk/licensefragment/model/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artitk/licensefragment/model/LicenseManager;


# direct methods
.method private constructor <init>(Lcom/artitk/licensefragment/model/LicenseManager;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->this$0:Lcom/artitk/licensefragment/model/LicenseManager;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/artitk/licensefragment/model/LicenseManager;Lcom/artitk/licensefragment/model/LicenseManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;-><init>(Lcom/artitk/licensefragment/model/LicenseManager;)V

    return-void
.end method

.method private addChain([I)V
    .locals 5
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->this$0:Lcom/artitk/licensefragment/model/LicenseManager;

    invoke-static {v0}, Lcom/artitk/licensefragment/model/LicenseManager;->a(Lcom/artitk/licensefragment/model/LicenseManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    return-void

    .line 67
    :cond_1
    if-eqz p1, :cond_0

    .line 69
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->this$0:Lcom/artitk/licensefragment/model/LicenseManager;

    invoke-static {v4, v2}, Lcom/artitk/licensefragment/model/LicenseManager;->a(Lcom/artitk/licensefragment/model/LicenseManager;I)Lcom/artitk/licensefragment/model/b;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(I)Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->this$0:Lcom/artitk/licensefragment/model/LicenseManager;

    invoke-static {v1, p1}, Lcom/artitk/licensefragment/model/LicenseManager;->a(Lcom/artitk/licensefragment/model/LicenseManager;I)Lcom/artitk/licensefragment/model/b;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->this$0:Lcom/artitk/licensefragment/model/LicenseManager;

    invoke-static {v0, p1}, Lcom/artitk/licensefragment/model/LicenseManager;->b(Lcom/artitk/licensefragment/model/LicenseManager;I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->addChain([I)V

    .line 52
    return-object p0
.end method

.method public add(Ljava/util/ArrayList;)Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;"
        }
    .end annotation

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;->add(I)Lcom/artitk/licensefragment/model/LicenseManager$LicenseHashMap;

    goto :goto_0

    .line 62
    :cond_0
    return-object p0
.end method
