.class Lcom/flipboard/bottomsheet/BottomSheetLayout$4;
.super Ljava/lang/Object;
.source "BottomSheetLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Landroid/view/View;Lcom/flipboard/bottomsheet/c;Lcom/flipboard/bottomsheet/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/flipboard/bottomsheet/c;

.field final synthetic c:Lcom/flipboard/bottomsheet/b;

.field final synthetic d:Lcom/flipboard/bottomsheet/BottomSheetLayout;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;Lcom/flipboard/bottomsheet/c;Lcom/flipboard/bottomsheet/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->d:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->b:Lcom/flipboard/bottomsheet/c;

    iput-object p4, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->c:Lcom/flipboard/bottomsheet/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 621
    iget-object v0, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->d:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->b:Lcom/flipboard/bottomsheet/c;

    iget-object v3, p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$4;->c:Lcom/flipboard/bottomsheet/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Landroid/view/View;Lcom/flipboard/bottomsheet/c;Lcom/flipboard/bottomsheet/b;)V

    .line 622
    return-void
.end method
