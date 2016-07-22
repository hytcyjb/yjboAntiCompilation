.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;
.super Ljava/lang/Object;
.source "BtsDriverHoldOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initTagSelectionLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

.field final synthetic val$pos:I

.field final synthetic val$text:Landroid/widget/CheckedTextView;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Landroid/widget/CheckedTextView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iput-object p2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->val$text:Landroid/widget/CheckedTextView;

    iput p3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 1293
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->val$text:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->val$text:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1294
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->doResetAddTagsStatus()V

    .line 1295
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->val$text:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1296
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mTags:[Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->val$pos:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->val$pos:I

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->doAddText(Ljava/lang/String;ZI)Z
    invoke-static {v1, v3, v2, v4}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Ljava/lang/String;ZI)Z

    move-result v0

    .line 1297
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->val$text:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1301
    .end local v0           #bResult:Z
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 1293
    goto :goto_0

    .line 1299
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mTags:[Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;->val$pos:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->doDelText(Ljava/lang/String;)V

    goto :goto_1
.end method
