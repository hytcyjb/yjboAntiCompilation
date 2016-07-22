.class public interface abstract annotation Lcom/zhihu/android/bumblebee/a/b;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/zhihu/android/bumblebee/a/b;
        b = 0x0L
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract a()Lcom/zhihu/android/bumblebee/util/CacheType;
.end method

.method public abstract b()J
.end method
