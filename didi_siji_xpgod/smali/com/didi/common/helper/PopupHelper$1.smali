.class Lcom/didi/common/helper/PopupHelper$1;
.super Ljava/lang/Object;
.source "PopupHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/PopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/helper/PopupHelper;


# direct methods
.method constructor <init>(Lcom/didi/common/helper/PopupHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/didi/common/helper/PopupHelper$1;->this$0:Lcom/didi/common/helper/PopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/didi/common/helper/PopupHelper$1;->this$0:Lcom/didi/common/helper/PopupHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/PopupHelper;->disMissPopupWindow()V

    .line 290
    return-void
.end method
