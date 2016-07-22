.class final Lcom/squareup/wire/Redactor$1;
.super Lcom/squareup/wire/Redactor;
.source "Redactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Redactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Redactor",
        "<",
        "Lcom/squareup/wire/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    .local p1, builderConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .local p2, redactedFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local p3, messageFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local p4, messageRedactors:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/wire/Redactor<*>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/wire/Redactor;-><init>(Ljava/lang/reflect/Constructor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public redact(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;
    .locals 0
    .parameter "message"

    .prologue
    .line 16
    return-object p1
.end method
