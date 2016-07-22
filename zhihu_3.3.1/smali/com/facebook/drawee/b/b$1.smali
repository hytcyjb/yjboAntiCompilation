.class final Lcom/facebook/drawee/b/b$1;
.super Lcom/facebook/drawee/b/c;
.source "AbstractDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/b/c",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/drawee/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    if-eqz p3, :cond_0

    .line 49
    invoke-interface {p3}, Landroid/graphics/drawable/Animatable;->start()V

    .line 51
    :cond_0
    return-void
.end method
