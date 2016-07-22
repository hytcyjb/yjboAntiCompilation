.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$19;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Lcom/didi/beatles/listener/BtsConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 984
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$19;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetConfig()V
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$19;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->refreshGuidePicAndBottom()V
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1600(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    .line 989
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/beatles/model/BtsConfig;->open:Z

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$19;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getUserInfo()V
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1700(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    .line 991
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$19;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    const/4 v1, 0x1

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->initWind(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1800(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;I)V

    .line 994
    :cond_0
    return-void
.end method
