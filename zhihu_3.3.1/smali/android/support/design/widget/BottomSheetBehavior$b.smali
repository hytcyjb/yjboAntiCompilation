.class Landroid/support/design/widget/BottomSheetBehavior$b;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/BottomSheetBehavior;

.field private final b:Landroid/view/View;

.field private final c:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->b:Landroid/view/View;

    .line 625
    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->c:I

    .line 626
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->j(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->j(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ag;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ag;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->b:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->c:I

    invoke-static {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->b(Landroid/support/design/widget/BottomSheetBehavior;I)V

    goto :goto_0
.end method
