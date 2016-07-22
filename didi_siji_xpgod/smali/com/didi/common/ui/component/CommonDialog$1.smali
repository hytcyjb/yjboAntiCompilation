.class Lcom/didi/common/ui/component/CommonDialog$1;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/component/CommonDialog;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/CommonDialog;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/component/CommonDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog$1;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog$1;->this$0:Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->dismiss()V

    .line 224
    return-void
.end method
