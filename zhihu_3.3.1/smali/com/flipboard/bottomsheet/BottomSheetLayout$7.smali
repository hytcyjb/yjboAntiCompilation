.class Lcom/flipboard/bottomsheet/BottomSheetLayout$7;
.super Lcom/flipboard/bottomsheet/BottomSheetLayout$a;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$a;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 717
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->c:Z

    if-nez v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 719
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    sget-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 720
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)V

    .line 721
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->removeView(Landroid/view/View;)V

    .line 723
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/b;

    move-result-object v0

    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-interface {v0, v1}, Lcom/flipboard/bottomsheet/b;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/c;)Lcom/flipboard/bottomsheet/c;

    .line 729
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/b;)Lcom/flipboard/bottomsheet/b;

    .line 730
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->e(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 732
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$7;->b:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v0, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 735
    :cond_1
    return-void
.end method
