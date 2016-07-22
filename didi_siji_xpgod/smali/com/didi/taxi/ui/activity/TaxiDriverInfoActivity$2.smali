.class Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$2;
.super Ljava/lang/Object;
.source "TaxiDriverInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 79
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 80
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$2;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->finish()V

    .line 81
    return-void
.end method
