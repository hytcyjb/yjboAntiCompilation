.class Lcom/didi/taxi/ui/fragment/TaxiResendFragment$4;
.super Ljava/lang/Object;
.source "TaxiResendFragment.java"

# interfaces
.implements Lcom/didi/car/listener/PlaceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$4;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaceChanged()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateBooking(Z)V

    .line 164
    return-void
.end method
