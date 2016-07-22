.class Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$1;
.super Ljava/lang/Object;
.source "TaxiComplaintActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->onBackPressed()V

    .line 67
    return-void
.end method
