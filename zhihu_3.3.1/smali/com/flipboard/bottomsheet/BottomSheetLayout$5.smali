.class Lcom/flipboard/bottomsheet/BottomSheetLayout$5;
.super Ljava/lang/Object;
.source "BottomSheetLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Landroid/view/View;Lcom/flipboard/bottomsheet/c;Lcom/flipboard/bottomsheet/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 660
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$5$1;

    invoke-direct {v1, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout$5$1;-><init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$5;)V

    invoke-virtual {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->post(Ljava/lang/Runnable;)Z

    .line 670
    const/4 v0, 0x1

    return v0
.end method
