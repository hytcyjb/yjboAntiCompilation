.class Landroid/support/v4/widget/ag$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ag;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Landroid/support/v4/widget/ag$2;->a:Landroid/support/v4/widget/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v4/widget/ag$2;->a:Landroid/support/v4/widget/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ag;->c(I)V

    .line 336
    return-void
.end method
