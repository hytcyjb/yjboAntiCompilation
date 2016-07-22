.class Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$6;
.super Ljava/lang/Object;
.source "TopicRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$6;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$6;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #calls: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->setLocationView()V
    invoke-static {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$1000(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V

    .line 401
    return-void
.end method
