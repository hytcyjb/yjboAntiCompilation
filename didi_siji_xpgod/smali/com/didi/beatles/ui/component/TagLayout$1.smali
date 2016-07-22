.class Lcom/didi/beatles/ui/component/TagLayout$1;
.super Ljava/lang/Object;
.source "TagLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/component/TagLayout;->addTag(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/component/TagLayout;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/component/TagLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/didi/beatles/ui/component/TagLayout$1;->this$0:Lcom/didi/beatles/ui/component/TagLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/didi/beatles/ui/component/TagLayout$1;->this$0:Lcom/didi/beatles/ui/component/TagLayout;

    #getter for: Lcom/didi/beatles/ui/component/TagLayout;->mCallback:Lcom/didi/beatles/ui/component/TagLayout$ITagLayoutCallback;
    invoke-static {v0}, Lcom/didi/beatles/ui/component/TagLayout;->access$100(Lcom/didi/beatles/ui/component/TagLayout;)Lcom/didi/beatles/ui/component/TagLayout$ITagLayoutCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/didi/beatles/ui/component/TagLayout$1;->this$0:Lcom/didi/beatles/ui/component/TagLayout;

    #getter for: Lcom/didi/beatles/ui/component/TagLayout;->mCallback:Lcom/didi/beatles/ui/component/TagLayout$ITagLayoutCallback;
    invoke-static {v0}, Lcom/didi/beatles/ui/component/TagLayout;->access$100(Lcom/didi/beatles/ui/component/TagLayout;)Lcom/didi/beatles/ui/component/TagLayout$ITagLayoutCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/didi/beatles/ui/component/TagLayout$ITagLayoutCallback;->onTagClick(Landroid/view/View;)V

    .line 168
    :cond_0
    return-void
.end method
