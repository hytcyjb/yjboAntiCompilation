.class Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$2;
.super Ljava/lang/Object;
.source "BtsDriverMatchFragmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;->fillUI(Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$ViewHolder;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

.field final synthetic val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;Lcom/didi/beatles/model/order/BtsOrderDriverListItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$2;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 197
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$2;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$2;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;->access$000(Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter$2;->val$order:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_id:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;->startProfileWebActivity(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
