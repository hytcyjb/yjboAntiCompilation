.class Landroid/support/v4/view/a/l$b$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"

# interfaces
.implements Landroid/support/v4/view/a/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/a/l$b;->a(Landroid/support/v4/view/a/l;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/a/l;

.field final synthetic b:Landroid/support/v4/view/a/l$b;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/l$b;Landroid/support/v4/view/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Landroid/support/v4/view/a/l$b$1;->b:Landroid/support/v4/view/a/l$b;

    iput-object p2, p0, Landroid/support/v4/view/a/l$b$1;->a:Landroid/support/v4/view/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/view/a/l$b$1;->a:Landroid/support/v4/view/a/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/l;->a(I)Landroid/support/v4/view/a/e;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/a/e;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/view/a/l$b$1;->a:Landroid/support/v4/view/a/l;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a/l;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 62
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 63
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/a/e;

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/view/a/e;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_0
    return-object v3
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/view/a/l$b$1;->a:Landroid/support/v4/view/a/l;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a/l;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
