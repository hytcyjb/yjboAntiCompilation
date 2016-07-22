.class Lcom/didi/beatles/im/BtsConversationActivity$4;
.super Ljava/lang/Object;
.source "BtsConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/im/BtsConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationActivity$4;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$4;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->finish()V

    .line 303
    return-void
.end method
