.class Lcom/didi/im/activity/ConversationActivity$4;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/activity/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/activity/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/didi/im/activity/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/didi/im/activity/ConversationActivity$4;->this$0:Lcom/didi/im/activity/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$4;->this$0:Lcom/didi/im/activity/ConversationActivity;

    invoke-virtual {v0}, Lcom/didi/im/activity/ConversationActivity;->finish()V

    .line 274
    return-void
.end method
