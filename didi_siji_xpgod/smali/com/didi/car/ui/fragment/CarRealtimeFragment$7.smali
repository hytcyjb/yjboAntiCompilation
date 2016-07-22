.class Lcom/didi/car/ui/fragment/CarRealtimeFragment$7;
.super Ljava/lang/Object;
.source "CarRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "isAvailable"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    iget-boolean v0, v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->carAvailable:Z

    if-eq v0, p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    #calls: Lcom/didi/car/ui/fragment/CarRealtimeFragment;->checkCarAvailable()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->access$400(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V

    .line 285
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    iput-boolean p1, v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->carAvailable:Z

    .line 288
    :cond_0
    return-void
.end method
