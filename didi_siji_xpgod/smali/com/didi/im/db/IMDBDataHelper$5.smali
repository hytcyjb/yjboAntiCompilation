.class final Lcom/didi/im/db/IMDBDataHelper$5;
.super Ljava/lang/Object;
.source "IMDBDataHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/db/IMDBDataHelper;->successedCallback(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;[Landroid/content/ContentProviderResult;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listDtoChatRecord:Ljava/util/ArrayList;

.field final synthetic val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

.field final synthetic val$results:[Landroid/content/ContentProviderResult;


# direct methods
.method constructor <init>(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;[Landroid/content/ContentProviderResult;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/didi/im/db/IMDBDataHelper$5;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    iput-object p2, p0, Lcom/didi/im/db/IMDBDataHelper$5;->val$results:[Landroid/content/ContentProviderResult;

    iput-object p3, p0, Lcom/didi/im/db/IMDBDataHelper$5;->val$listDtoChatRecord:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/didi/im/db/IMDBDataHelper$5;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    iget-object v1, p0, Lcom/didi/im/db/IMDBDataHelper$5;->val$results:[Landroid/content/ContentProviderResult;

    iget-object v2, p0, Lcom/didi/im/db/IMDBDataHelper$5;->val$listDtoChatRecord:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;->successed([Landroid/content/ContentProviderResult;Ljava/util/ArrayList;)V

    .line 1111
    return-void
.end method
