.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$15;
.super Ljava/lang/Object;
.source "BtsDriverHoldOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->doAddText(Ljava/lang/String;ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$15;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iput-object p2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$15;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$15;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$15;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->doDelText(Ljava/lang/String;)V

    .line 1446
    return-void
.end method
