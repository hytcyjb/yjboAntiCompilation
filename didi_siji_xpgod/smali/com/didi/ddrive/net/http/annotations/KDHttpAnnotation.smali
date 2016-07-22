.class public interface abstract annotation Lcom/didi/ddrive/net/http/annotations/KDHttpAnnotation;
.super Ljava/lang/Object;
.source "KDHttpAnnotation.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/didi/ddrive/net/http/annotations/KDHttpAnnotation;
        antiCheating = false
        antiDecompile = false
        cache = false
        command = 0x0
        deviceInfo = false
        https = false
        mobileIdf = false
        transaction = .enum Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->TAXI:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;
        urlType = .enum Lcom/didi/ddrive/net/http/config/KDUrlType;->USER:Lcom/didi/ddrive/net/http/config/KDUrlType;
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
.method public abstract antiCheating()Z
.end method

.method public abstract antiDecompile()Z
.end method

.method public abstract cache()Z
.end method

.method public abstract command()I
.end method

.method public abstract deviceInfo()Z
.end method

.method public abstract https()Z
.end method

.method public abstract mobileIdf()Z
.end method

.method public abstract transaction()Lcom/didi/ddrive/net/http/config/KDHttpTransaction;
.end method

.method public abstract urlType()Lcom/didi/ddrive/net/http/config/KDUrlType;
.end method
