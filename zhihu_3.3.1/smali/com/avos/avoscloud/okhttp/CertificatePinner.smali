.class public final Lcom/avos/avoscloud/okhttp/CertificatePinner;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/CertificatePinner$1;,
        Lcom/avos/avoscloud/okhttp/CertificatePinner$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/avos/avoscloud/okhttp/CertificatePinner;


# instance fields
.field private final hostnameToPins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/avos/avoscloud/okio/ByteString;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/avos/avoscloud/okhttp/CertificatePinner$Builder;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/CertificatePinner$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/CertificatePinner$Builder;->build()Lcom/avos/avoscloud/okhttp/CertificatePinner;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/CertificatePinner;->DEFAULT:Lcom/avos/avoscloud/okhttp/CertificatePinner;

    return-void
.end method

.method private constructor <init>(Lcom/avos/avoscloud/okhttp/CertificatePinner$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    #getter for: Lcom/avos/avoscloud/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/CertificatePinner$Builder;->access$000(Lcom/avos/avoscloud/okhttp/CertificatePinner$Builder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->immutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/CertificatePinner$Builder;Lcom/avos/avoscloud/okhttp/CertificatePinner$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/CertificatePinner;-><init>(Lcom/avos/avoscloud/okhttp/CertificatePinner$Builder;)V

    return-void
.end method

.method public static pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 223
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sha1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lcom/avos/avoscloud/okhttp/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sha1(Ljava/security/cert/X509Certificate;)Lcom/avos/avoscloud/okio/ByteString;
    .locals 1
    .parameter

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->of([B)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->sha1(Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okhttp/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 155
    if-nez v3, :cond_1

    .line 159
    :cond_0
    return-void

    .line 157
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    .line 158
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 159
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 163
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate pinning failure!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n  Peer certificate chain:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 166
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_3

    .line 167
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 168
    const-string v5, "\n    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 171
    :cond_3
    const-string v0, "\n  Pinned certificates for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okio/ByteString;

    .line 173
    const-string v3, "\n    sha1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 175
    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs check(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 182
    return-void
.end method

.method findMatchingPins(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/avos/avoscloud/okio/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x2e

    .line 189
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 192
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 193
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 198
    if-eq v1, v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    move-object v3, v1

    .line 203
    :goto_0
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    move-object v0, v2

    .line 214
    :cond_0
    :goto_1
    return-object v0

    .line 205
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 206
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 207
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 209
    goto :goto_1

    .line 212
    :cond_2
    if-nez v0, :cond_0

    move-object v0, v3

    .line 214
    goto :goto_1

    :cond_3
    move-object v3, v2

    goto :goto_0
.end method
