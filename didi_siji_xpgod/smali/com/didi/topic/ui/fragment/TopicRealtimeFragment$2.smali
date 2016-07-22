.class Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$2;
.super Ljava/lang/Object;
.source "TopicRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/BottomListMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->editAvatar()V
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
    .line 239
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$2;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$2;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    const/16 v1, 0x3ee

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 243
    return-void
.end method
