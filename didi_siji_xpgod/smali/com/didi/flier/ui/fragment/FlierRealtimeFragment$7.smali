.class Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$7;
.super Ljava/lang/Object;
.source "FlierRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$7;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "isAvailable"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$7;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->checkFlierAvailable()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->access$400(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V

    .line 293
    return-void
.end method
