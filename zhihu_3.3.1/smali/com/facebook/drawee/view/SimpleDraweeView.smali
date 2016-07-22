.class public Lcom/facebook/drawee/view/SimpleDraweeView;
.super Lcom/facebook/drawee/view/GenericDraweeView;
.source "SimpleDraweeView.java"


# static fields
.field private static a:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<+",
            "Lcom/facebook/drawee/d/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/facebook/drawee/d/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    invoke-direct {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/generic/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Lcom/facebook/drawee/generic/a;)V

    .line 51
    invoke-direct {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a()V

    .line 52
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/facebook/drawee/view/SimpleDraweeView;->a:Lcom/facebook/common/internal/i;

    const-string v1, "SimpleDraweeView was not initialized!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/facebook/drawee/view/SimpleDraweeView;->a:Lcom/facebook/common/internal/i;

    invoke-interface {v0}, Lcom/facebook/common/internal/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/d/d;

    iput-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->b:Lcom/facebook/drawee/d/d;

    goto :goto_0
.end method

.method public static a(Lcom/facebook/common/internal/i;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/i",
            "<+",
            "Lcom/facebook/drawee/d/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    sput-object p0, Lcom/facebook/drawee/view/SimpleDraweeView;->a:Lcom/facebook/common/internal/i;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->b:Lcom/facebook/drawee/d/d;

    .line 108
    invoke-interface {v0, p2}, Lcom/facebook/drawee/d/d;->d(Ljava/lang/Object;)Lcom/facebook/drawee/d/d;

    move-result-object v0

    .line 109
    invoke-interface {v0, p1}, Lcom/facebook/drawee/d/d;->b(Landroid/net/Uri;)Lcom/facebook/drawee/d/d;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/d/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/drawee/d/d;->b(Lcom/facebook/drawee/d/a;)Lcom/facebook/drawee/d/d;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lcom/facebook/drawee/d/d;->m()Lcom/facebook/drawee/d/a;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/d/a;)V

    .line 113
    return-void
.end method

.method protected getControllerBuilder()Lcom/facebook/drawee/d/d;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/drawee/view/SimpleDraweeView;->b:Lcom/facebook/drawee/d/d;

    return-object v0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->a(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 98
    return-void
.end method
