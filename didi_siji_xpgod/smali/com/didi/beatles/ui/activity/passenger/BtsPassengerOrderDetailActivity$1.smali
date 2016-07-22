.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$1;
.super Ljava/lang/Object;
.source "BtsPassengerOrderDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$1;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->finish()V

    .line 79
    return-void
.end method
