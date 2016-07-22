.class Lcom/flipboard/bottomsheet/BottomSheetLayout$2;
.super Lcom/flipboard/bottomsheet/BottomSheetLayout$a;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$2;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$a;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$2;->c:Z

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$2;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 507
    :cond_0
    return-void
.end method
