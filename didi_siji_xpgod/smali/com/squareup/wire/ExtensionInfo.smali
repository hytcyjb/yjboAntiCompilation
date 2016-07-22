.class final Lcom/squareup/wire/ExtensionInfo;
.super Ljava/lang/Object;
.source "ExtensionInfo.java"


# instance fields
.field public final fqLocation:Ljava/lang/String;

.field public final fqType:Ljava/lang/String;

.field public final label:Lcom/squareup/protoparser/MessageType$Label;

.field public final location:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/protoparser/MessageType$Label;)V
    .locals 0
    .parameter "type"
    .parameter "fqType"
    .parameter "location"
    .parameter "fqLocation"
    .parameter "label"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/squareup/wire/ExtensionInfo;->type:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/squareup/wire/ExtensionInfo;->fqType:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/squareup/wire/ExtensionInfo;->location:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/squareup/wire/ExtensionInfo;->fqLocation:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/squareup/wire/ExtensionInfo;->label:Lcom/squareup/protoparser/MessageType$Label;

    .line 20
    return-void
.end method
