.class Landroid/databinding/m$7;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/m;-><init>(Landroid/databinding/d;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/databinding/m;


# direct methods
.method constructor <init>(Landroid/databinding/m;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Landroid/databinding/m$7;->a:Landroid/databinding/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Landroid/databinding/m$7;->a:Landroid/databinding/m;

    invoke-static {v0}, Landroid/databinding/m;->a(Landroid/databinding/m;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 239
    return-void
.end method
