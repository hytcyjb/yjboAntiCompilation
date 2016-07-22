.class public interface abstract annotation Lcom/zhihu/android/bumblebee/a/ab;
.super Ljava/lang/Object;
.source "Timeout.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/zhihu/android/bumblebee/a/ab;
        a = 0x4e20
        b = 0x4e20
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
.method public abstract a()I
.end method

.method public abstract b()I
.end method
