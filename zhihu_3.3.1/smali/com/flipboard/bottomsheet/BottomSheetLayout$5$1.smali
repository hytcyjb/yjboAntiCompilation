.class Lcom/flipboard/bottomsheet/BottomSheetLayout$5$1;
.super Ljava/lang/Object;
.source "BottomSheetLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout$5;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/BottomSheetLayout$5;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout$5;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5$1;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5$1;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout$5;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5$1;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout$5;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$5;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->b()V

    .line 668
    :cond_0
    return-void
.end method
