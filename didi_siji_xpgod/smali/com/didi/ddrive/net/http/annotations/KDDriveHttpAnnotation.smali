.class public interface abstract annotation Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
.super Ljava/lang/Object;
.source "KDDriveHttpAnnotation.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
        https = false
        needLogin = true
        urlType = .enum Lcom/didi/ddrive/net/http/config/KDUrlType;->DRIVE:Lcom/didi/ddrive/net/http/config/KDUrlType;
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
.method public abstract api()Ljava/lang/String;
.end method

.method public abstract apiVersion()Ljava/lang/String;
.end method

.method public abstract https()Z
.end method

.method public abstract needLogin()Z
.end method

.method public abstract urlType()Lcom/didi/ddrive/net/http/config/KDUrlType;
.end method
