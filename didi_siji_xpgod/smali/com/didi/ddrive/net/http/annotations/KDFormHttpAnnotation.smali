.class public interface abstract annotation Lcom/didi/ddrive/net/http/annotations/KDFormHttpAnnotation;
.super Ljava/lang/Object;
.source "KDFormHttpAnnotation.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/didi/ddrive/net/http/annotations/KDFormHttpAnnotation;
        formType = .enum Lcom/didi/ddrive/net/http/config/KDHttpFormType;->FILE:Lcom/didi/ddrive/net/http/config/KDHttpFormType;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract formType()Lcom/didi/ddrive/net/http/config/KDHttpFormType;
.end method
