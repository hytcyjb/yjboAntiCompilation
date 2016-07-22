.class public interface abstract Lcom/avos/avoscloud/ops/AVOp;
.super Ljava/lang/Object;
.source "AVOp.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/ops/AVOp$OpType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/avos/avoscloud/ops/AVOp;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract encodeOp()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get(I)Lcom/avos/avoscloud/ops/AVOp;
.end method

.method public abstract getValues()Ljava/lang/Object;
.end method

.method public abstract key()Ljava/lang/String;
.end method

.method public abstract merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;
.end method

.method public abstract remove(I)Lcom/avos/avoscloud/ops/AVOp;
.end method

.method public abstract size()I
.end method

.method public abstract type()Lcom/avos/avoscloud/ops/AVOp$OpType;
.end method
