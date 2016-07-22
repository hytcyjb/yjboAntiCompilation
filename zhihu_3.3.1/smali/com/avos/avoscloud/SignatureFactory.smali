.class public interface abstract Lcom/avos/avoscloud/SignatureFactory;
.super Ljava/lang/Object;
.source "SignatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/SignatureFactory$SignatureException;
    }
.end annotation


# virtual methods
.method public abstract createConversationSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/Signature;"
        }
    .end annotation
.end method

.method public abstract createGroupSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/Signature;"
        }
    .end annotation
.end method

.method public abstract createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Signature;"
        }
    .end annotation
.end method
