.class Lcom/didi/common/net/HttpParams$KVPairComparator;
.super Ljava/lang/Object;
.source "HttpParams.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/net/HttpParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KVPairComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/http/message/BasicNameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/net/HttpParams;


# direct methods
.method constructor <init>(Lcom/didi/common/net/HttpParams;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/common/net/HttpParams$KVPairComparator;->this$0:Lcom/didi/common/net/HttpParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    check-cast p1, Lorg/apache/http/message/BasicNameValuePair;

    .end local p1
    check-cast p2, Lorg/apache/http/message/BasicNameValuePair;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/didi/common/net/HttpParams$KVPairComparator;->compare(Lorg/apache/http/message/BasicNameValuePair;Lorg/apache/http/message/BasicNameValuePair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/http/message/BasicNameValuePair;Lorg/apache/http/message/BasicNameValuePair;)I
    .locals 2
    .parameter "pairA"
    .parameter "pairB"

    .prologue
    .line 85
    invoke-virtual {p1}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
