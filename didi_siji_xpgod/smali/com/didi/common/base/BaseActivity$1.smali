.class Lcom/didi/common/base/BaseActivity$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/base/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/common/base/BaseActivity$1;->this$0:Lcom/didi/common/base/BaseActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/didi/common/base/BaseActivity$1;->this$0:Lcom/didi/common/base/BaseActivity;

    #calls: Lcom/didi/common/base/BaseActivity;->removeDialog()V
    invoke-static {v0}, Lcom/didi/common/base/BaseActivity;->access$000(Lcom/didi/common/base/BaseActivity;)V

    .line 114
    return-void
.end method
