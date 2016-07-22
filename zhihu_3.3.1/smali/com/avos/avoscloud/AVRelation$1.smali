.class Lcom/avos/avoscloud/AVRelation$1;
.super Ljava/util/HashMap;
.source "AVRelation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVRelation;->getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVRelation;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVRelation;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/avos/avoscloud/AVRelation$1;->this$0:Lcom/avos/avoscloud/AVRelation;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string v0, "object"

    iget-object v1, p0, Lcom/avos/avoscloud/AVRelation$1;->this$0:Lcom/avos/avoscloud/AVRelation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVRelation;->getParent()Lcom/avos/avoscloud/AVObject;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVRelation$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "key"

    iget-object v1, p0, Lcom/avos/avoscloud/AVRelation$1;->this$0:Lcom/avos/avoscloud/AVRelation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVRelation;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVRelation$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method
