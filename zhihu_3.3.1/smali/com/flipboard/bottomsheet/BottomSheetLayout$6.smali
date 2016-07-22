.class Lcom/flipboard/bottomsheet/BottomSheetLayout$6;
.super Ljava/lang/Object;
.source "BottomSheetLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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
    .line 676
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 680
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    move-result-object v1

    sget-object v2, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->c(Lcom/flipboard/bottomsheet/BottomSheetLayout;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 682
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    move-result-object v1

    sget-object v2, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    if-ne v1, v2, :cond_0

    .line 683
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    sget-object v2, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-static {v1, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;F)V

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$6;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-static {v1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;I)I

    .line 688
    return-void
.end method
